package androidx.media3.extractor;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.metadata.id3.CommentFrame;
import androidx.media3.extractor.metadata.id3.InternalFrame;
import com.google.common.base.Predicate;
import com.google.common.collect.UnmodifiableIterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class GaplessInfoHolder {
    private static final Pattern GAPLESS_COMMENT_PATTERN = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public int encoderDelay = -1;
    public int encoderPadding = -1;

    /* JADX WARN: Multi-variable type inference failed */
    public boolean setFromMetadata(Metadata metadata) {
        UnmodifiableIterator it = metadata.getMatchingEntries(CommentFrame.class, new Predicate() { // from class: androidx.media3.extractor.GaplessInfoHolder$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return ((CommentFrame) obj).description.equals("iTunSMPB");
            }
        }).iterator();
        while (it.hasNext()) {
            if (setFromComment(((CommentFrame) it.next()).text)) {
                return true;
            }
        }
        UnmodifiableIterator it2 = metadata.getMatchingEntries(InternalFrame.class, new Predicate() { // from class: androidx.media3.extractor.GaplessInfoHolder$$ExternalSyntheticLambda1
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return GaplessInfoHolder.$r8$lambda$gwxo5u9DI0xPPkArb8vKjkPUOAo((InternalFrame) obj);
            }
        }).iterator();
        while (it2.hasNext()) {
            if (setFromComment(((InternalFrame) it2.next()).text)) {
                return true;
            }
        }
        return false;
    }

    public static /* synthetic */ boolean $r8$lambda$gwxo5u9DI0xPPkArb8vKjkPUOAo(InternalFrame internalFrame) {
        return internalFrame.domain.equals("com.apple.iTunes") && internalFrame.description.equals("iTunSMPB");
    }

    private boolean setFromComment(String str) {
        Matcher matcher = GAPLESS_COMMENT_PATTERN.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            int i = Integer.parseInt((String) Util.castNonNull(matcher.group(1)), 16);
            int i2 = Integer.parseInt((String) Util.castNonNull(matcher.group(2)), 16);
            if (i <= 0 && i2 <= 0) {
                return false;
            }
            this.encoderDelay = i;
            this.encoderPadding = i2;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public boolean hasGaplessInfo() {
        return (this.encoderDelay == -1 || this.encoderPadding == -1) ? false : true;
    }
}

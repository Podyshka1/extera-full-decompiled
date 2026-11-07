package androidx.media3.exoplayer;

import android.text.TextUtils;
import androidx.media3.common.Format;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class DecoderReuseEvaluation {
    public final String decoderName;
    public final int discardReasons;
    public final Format newFormat;
    public final Format oldFormat;
    public final int result;

    public DecoderReuseEvaluation(String str, Format format, Format format2, int i, int i2) {
        Preconditions.checkArgument(i == 0 || i2 == 0);
        Preconditions.checkArgument(true ^ TextUtils.isEmpty(str));
        this.decoderName = str;
        this.oldFormat = (Format) Preconditions.checkNotNull(format);
        this.newFormat = (Format) Preconditions.checkNotNull(format2);
        this.result = i;
        this.discardReasons = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && DecoderReuseEvaluation.class == obj.getClass()) {
            DecoderReuseEvaluation decoderReuseEvaluation = (DecoderReuseEvaluation) obj;
            if (this.result == decoderReuseEvaluation.result && this.discardReasons == decoderReuseEvaluation.discardReasons && this.decoderName.equals(decoderReuseEvaluation.decoderName) && this.oldFormat.equals(decoderReuseEvaluation.oldFormat) && this.newFormat.equals(decoderReuseEvaluation.newFormat)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((((527 + this.result) * 31) + this.discardReasons) * 31) + this.decoderName.hashCode()) * 31) + this.oldFormat.hashCode()) * 31) + this.newFormat.hashCode();
    }
}

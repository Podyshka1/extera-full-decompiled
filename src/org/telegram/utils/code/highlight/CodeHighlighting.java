package org.telegram.utils.code.highlight;

import android.graphics.Typeface;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.MetricAffectingSpan;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.TextStyleSpan;
import org.telegram.utils.code.highlight.PrismaHighlighter;
import org.telegram.utils.code.highlight.PrismaHighlightingService;

/* JADX INFO: loaded from: classes8.dex */
public abstract class CodeHighlighting {
    private static int renderedCharacters;
    private static final PrismaHighlightingService SERVICE = new PrismaHighlightingService(new PrismaHighlightingService.Factory() { // from class: org.telegram.utils.code.highlight.CodeHighlighting$$ExternalSyntheticLambda0
        @Override // org.telegram.utils.code.highlight.PrismaHighlightingService.Factory
        public final PrismaHighlightingService.Tokenizer create() {
            return CodeHighlighting.$r8$lambda$at2mQg0UkmB7v0OcGQI24H2QYOE();
        }
    }, new PrismaHighlightingService.FailureHandler() { // from class: org.telegram.utils.code.highlight.CodeHighlighting$$ExternalSyntheticLambda1
        @Override // org.telegram.utils.code.highlight.PrismaHighlightingService.FailureHandler
        public final void failed(Throwable th) {
            FileLog.m1040e(th);
        }
    });
    private static final LinkedHashMap<CacheKey, SpannableString> RENDERED = new LinkedHashMap<>(8, 0.75f, true);
    private static final Object TARGET_LOCK = new Object();
    private static final ArrayList<TargetRequests> TARGETS = new ArrayList<>();

    public static int getTextSizeDecrement(int i) {
        if (i > 120) {
            return 5;
        }
        return i > 50 ? 3 : 2;
    }

    public static class Span extends CharacterStyle {
        public final String code;
        public final int currentType;
        public final float decrementSize;
        public final String lng;
        public final boolean smallerSize;
        public final TextStyleSpan.TextStyleRun style;

        public Span(boolean z, int i, TextStyleSpan.TextStyleRun textStyleRun, String str, String str2) {
            this.smallerSize = z;
            this.lng = str;
            this.code = str2;
            this.decrementSize = CodeHighlighting.getTextSizeDecrement(str2 == null ? 0 : str2.length());
            this.currentType = i;
            this.style = textStyleRun;
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            if (this.smallerSize) {
                textPaint.setTextSize(AndroidUtilities.dp(SharedConfig.fontSize - this.decrementSize));
            }
            int i = this.currentType;
            if (i == 2) {
                textPaint.setColor(-1);
            } else if (i == 1) {
                textPaint.setColor(Theme.getColor(Theme.key_chat_messageTextOut));
            } else {
                textPaint.setColor(Theme.getColor(Theme.key_chat_messageTextIn));
            }
            TextStyleSpan.TextStyleRun textStyleRun = this.style;
            if (textStyleRun != null) {
                textStyleRun.applyStyle(textPaint);
            } else {
                textPaint.setTypeface(Typeface.MONOSPACE);
                textPaint.setUnderlineText(false);
            }
        }
    }

    public static class ColorSpan extends CharacterStyle {
        public int group;

        public ColorSpan(int i) {
            this.group = i;
        }

        public int getColorKey() {
            switch (PrismaTokenStyles.legacyGroup(this.group)) {
                case 1:
                    return Theme.key_code_keyword;
                case 2:
                    return Theme.key_code_operator;
                case 3:
                    return Theme.key_code_constant;
                case 4:
                    return Theme.key_code_string;
                case 5:
                    return Theme.key_code_number;
                case 6:
                    return Theme.key_code_comment;
                case 7:
                    return Theme.key_code_function;
                default:
                    return -1;
            }
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            int colorKey = getColorKey();
            if (colorKey >= 0) {
                textPaint.setColor(Theme.getColor(colorKey));
            }
        }
    }

    public static class LockedSpannableString extends SpannableString {
        public volatile boolean ready;

        public LockedSpannableString(CharSequence charSequence) {
            super(charSequence);
            this.ready = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public <T> T[] rawSpans(int i, int i2, Class<T> cls) {
            return (T[]) super.getSpans(i, i2, cls);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int rawSpanStart(Object obj) {
            return super.getSpanStart(obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int rawSpanEnd(Object obj) {
            return super.getSpanEnd(obj);
        }

        public void unlock() {
            this.ready = true;
        }

        @Override // android.text.SpannableString, android.text.Spanned
        public <T> T[] getSpans(int i, int i2, Class<T> cls) {
            return !this.ready ? (T[]) ((Object[]) Array.newInstance((Class<?>) cls, 0)) : (T[]) super.getSpans(i, i2, cls);
        }

        @Override // android.text.SpannableString, android.text.Spanned
        public int nextSpanTransition(int i, int i2, Class cls) {
            return !this.ready ? i2 : super.nextSpanTransition(i, i2, cls);
        }

        @Override // android.text.SpannableString, android.text.Spanned
        public int getSpanStart(Object obj) {
            if (this.ready) {
                return super.getSpanStart(obj);
            }
            return -1;
        }

        @Override // android.text.SpannableString, android.text.Spanned
        public int getSpanEnd(Object obj) {
            if (this.ready) {
                return super.getSpanEnd(obj);
            }
            return -1;
        }

        @Override // android.text.SpannableString, android.text.Spanned
        public int getSpanFlags(Object obj) {
            if (this.ready) {
                return super.getSpanFlags(obj);
            }
            return 0;
        }
    }

    public static class LockedWithFallbackSpannableString extends LockedSpannableString {
        public SpannableStringBuilder fallback;

        public LockedWithFallbackSpannableString(CharSequence charSequence, SpannableStringBuilder spannableStringBuilder) {
            super(charSequence);
            this.fallback = spannableStringBuilder;
        }

        @Override // org.telegram.utils.code.highlight.CodeHighlighting.LockedSpannableString, android.text.SpannableString, android.text.Spanned
        public <T> T[] getSpans(int i, int i2, Class<T> cls) {
            SpannableStringBuilder spannableStringBuilder;
            return (this.ready || (spannableStringBuilder = this.fallback) == null) ? (T[]) super.getSpans(i, i2, cls) : (T[]) spannableStringBuilder.getSpans(i, i2, cls);
        }

        @Override // org.telegram.utils.code.highlight.CodeHighlighting.LockedSpannableString, android.text.SpannableString, android.text.Spanned
        public int nextSpanTransition(int i, int i2, Class cls) {
            SpannableStringBuilder spannableStringBuilder;
            return (this.ready || (spannableStringBuilder = this.fallback) == null) ? super.nextSpanTransition(i, i2, cls) : spannableStringBuilder.nextSpanTransition(i, i2, cls);
        }

        @Override // org.telegram.utils.code.highlight.CodeHighlighting.LockedSpannableString, android.text.SpannableString, android.text.Spanned
        public int getSpanStart(Object obj) {
            SpannableStringBuilder spannableStringBuilder;
            return (this.ready || (spannableStringBuilder = this.fallback) == null) ? super.getSpanStart(obj) : spannableStringBuilder.getSpanStart(obj);
        }

        @Override // org.telegram.utils.code.highlight.CodeHighlighting.LockedSpannableString, android.text.SpannableString, android.text.Spanned
        public int getSpanEnd(Object obj) {
            SpannableStringBuilder spannableStringBuilder;
            return (this.ready || (spannableStringBuilder = this.fallback) == null) ? super.getSpanEnd(obj) : spannableStringBuilder.getSpanEnd(obj);
        }

        @Override // org.telegram.utils.code.highlight.CodeHighlighting.LockedSpannableString, android.text.SpannableString, android.text.Spanned
        public int getSpanFlags(Object obj) {
            SpannableStringBuilder spannableStringBuilder;
            return (this.ready || (spannableStringBuilder = this.fallback) == null) ? super.getSpanFlags(obj) : spannableStringBuilder.getSpanFlags(obj);
        }
    }

    public static final class SyntaxFontSpan extends MetricAffectingSpan {
        private static final Typeface[] FONTS;
        private final int flags;
        private final int style;

        static {
            Typeface typeface = Typeface.MONOSPACE;
            FONTS = new Typeface[]{typeface, Typeface.create(typeface, 1), Typeface.create(typeface, 2), Typeface.create(typeface, 3)};
        }

        public SyntaxFontSpan(int i) {
            this.flags = i;
            this.style = ((i & 256) != 0 ? 1 : 0) | ((i & 512) != 0 ? 2 : 0);
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            updateMeasureState(textPaint);
        }

        @Override // android.text.style.MetricAffectingSpan
        public void updateMeasureState(TextPaint textPaint) {
            textPaint.setTypeface(FONTS[this.style]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0045 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ PrismaHighlightingService.Tokenizer $r8$lambda$at2mQg0UkmB7v0OcGQI24H2QYOE() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] bArr;
        InputStream inputStreamOpen = ApplicationLoader.applicationContext.getAssets().open("grammars.dat");
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                bArr = new byte[8192];
            } finally {
            }
        } catch (Throwable th) {
            if (inputStreamOpen != null) {
            }
            throw th;
        }
        while (true) {
            int i = inputStreamOpen.read(bArr);
            if (i != -1) {
                byteArrayOutputStream.write(bArr, 0, i);
            } else {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                inputStreamOpen.close();
                final PrismaHighlighter prismaHighlighter = new PrismaHighlighter(byteArray);
                return new PrismaHighlightingService.Tokenizer() { // from class: org.telegram.utils.code.highlight.CodeHighlighting.1
                    @Override // org.telegram.utils.code.highlight.PrismaHighlightingService.Tokenizer
                    public PrismaHighlighter.Tokenization tokenize(String str, String str2) {
                        return prismaHighlighter.tokenize(str, str2);
                    }

                    @Override // org.telegram.utils.code.highlight.PrismaHighlightingService.Tokenizer
                    public String[] getLanguages() {
                        return prismaHighlighter.getLanguages();
                    }

                    @Override // org.telegram.utils.code.highlight.PrismaHighlightingService.Tokenizer, java.lang.AutoCloseable
                    public void close() {
                        prismaHighlighter.close();
                    }
                };
            }
            if (inputStreamOpen != null) {
                try {
                    inputStreamOpen.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static final class CacheKey {
        final String code;
        final String language;

        public CacheKey(String str, String str2) {
            this.language = str;
            this.code = str2;
        }

        public int hashCode() {
            return (this.language.hashCode() * 31) + this.code.hashCode();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof CacheKey)) {
                return false;
            }
            CacheKey cacheKey = (CacheKey) obj;
            return this.language.equals(cacheKey.language) && this.code.equals(cacheKey.code);
        }
    }

    public static SpannableString getHighlighted(CharSequence charSequence, String str) {
        if (charSequence == null) {
            charSequence = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String strNormalizeLanguage = PrismaHighlightingService.normalizeLanguage(str);
        if (strNormalizeLanguage.isEmpty() || charSequence.length() == 0) {
            return new SpannableString(charSequence);
        }
        CacheKey cacheKey = new CacheKey(strNormalizeLanguage, charSequence.toString());
        boolean z = !(charSequence instanceof Spanned) && cacheKey.code.length() <= 65536;
        LinkedHashMap<CacheKey, SpannableString> linkedHashMap = RENDERED;
        synchronized (linkedHashMap) {
            if (z) {
                try {
                    SpannableString spannableString = linkedHashMap.get(cacheKey);
                    if (spannableString != null) {
                        return spannableString;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            boolean z2 = z;
            LockedSpannableString lockedSpannableString = new LockedSpannableString(charSequence);
            if (z2) {
                linkedHashMap.put(cacheKey, lockedSpannableString);
                renderedCharacters += cacheKey.code.length();
                while (true) {
                    LinkedHashMap<CacheKey, SpannableString> linkedHashMap2 = RENDERED;
                    if (linkedHashMap2.size() <= 8 && renderedCharacters <= 65536) {
                        break;
                    }
                    Map.Entry<CacheKey, SpannableString> next = linkedHashMap2.entrySet().iterator().next();
                    renderedCharacters -= next.getKey().code.length();
                    linkedHashMap2.remove(next.getKey());
                }
            }
            highlight(lockedSpannableString, 0, lockedSpannableString.length(), strNormalizeLanguage, 0, null, true);
            return lockedSpannableString;
        }
    }

    public static void highlightEditable(CharSequence charSequence, String str, final Utilities.Callback<SpannableString> callback) {
        if (callback == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        final SpannableString spannableString = new SpannableString(charSequence);
        String strNormalizeLanguage = PrismaHighlightingService.normalizeLanguage(str);
        if (strNormalizeLanguage.isEmpty() || spannableString.length() == 0) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.utils.code.highlight.CodeHighlighting$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(spannableString);
                }
            });
        } else {
            SERVICE.request(spannableString.toString(), strNormalizeLanguage, new PrismaHighlightingService.Callback() { // from class: org.telegram.utils.code.highlight.CodeHighlighting$$ExternalSyntheticLambda5
                @Override // org.telegram.utils.code.highlight.PrismaHighlightingService.Callback
                public final void complete(PrismaHighlightingService.Result result) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.utils.code.highlight.CodeHighlighting$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            CodeHighlighting.m24428$r8$lambda$c5znu9xYhw3MTSGH77p_iCE84g(spannableString, result, callback);
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$c5znu9xYhw3MTSGH77p_iCE8-4g, reason: not valid java name */
    public static /* synthetic */ void m24428$r8$lambda$c5znu9xYhw3MTSGH77p_iCE84g(SpannableString spannableString, PrismaHighlightingService.Result result, Utilities.Callback callback) {
        apply(spannableString, 0, spannableString.length(), result.tokens);
        callback.run(spannableString);
    }

    public static void prepare() {
        SERVICE.prepare();
    }

    public static Set<String> getLanguages() {
        return SERVICE.getLanguages();
    }

    public static String normalizeLanguage(String str) {
        if (str == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return str.trim().toLowerCase(Locale.ROOT);
    }

    public static final class TargetRequests {
        final HashMap<Long, Pending> ranges = new HashMap<>();
        final WeakReference<Spannable> target;

        public TargetRequests(Spannable spannable) {
            this.target = new WeakReference<>(spannable);
        }
    }

    public static final class Pending {
        PrismaHighlightingService.Request request;
        final String source;

        public Pending(String str) {
            this.source = str;
        }
    }

    private static TargetRequests findTarget(Spannable spannable, boolean z) {
        Iterator<TargetRequests> it = TARGETS.iterator();
        while (it.hasNext()) {
            TargetRequests next = it.next();
            Spannable spannable2 = next.target.get();
            if (spannable2 == null) {
                it.remove();
            } else if (spannable2 == spannable) {
                return next;
            }
        }
        if (!z) {
            return null;
        }
        TargetRequests targetRequests = new TargetRequests(spannable);
        TARGETS.add(targetRequests);
        return targetRequests;
    }

    public static void highlight(Spannable spannable, final int i, final int i2, String str, int i3, TextStyleSpan.TextStyleRun textStyleRun, boolean z) {
        final TargetRequests targetRequestsFindTarget;
        PrismaHighlightingService.Request request;
        if (spannable == null) {
            return;
        }
        if (i < 0 || i2 < i || i2 > spannable.length()) {
            throw new IndexOutOfBoundsException();
        }
        final Pending pending = new Pending(spannable.subSequence(i, i2).toString());
        final long j = (((long) i) << 32) | (((long) i2) & 4294967295L);
        Object obj = TARGET_LOCK;
        synchronized (obj) {
            try {
                targetRequestsFindTarget = findTarget(spannable, true);
                Pending pendingPut = targetRequestsFindTarget.ranges.put(Long.valueOf(j), pending);
                if (pendingPut != null && (request = pendingPut.request) != null) {
                    request.cancel();
                }
            } finally {
            }
        }
        PrismaHighlightingService.Request request2 = SERVICE.request(pending.source, str, new PrismaHighlightingService.Callback() { // from class: org.telegram.utils.code.highlight.CodeHighlighting$$ExternalSyntheticLambda2
            @Override // org.telegram.utils.code.highlight.PrismaHighlightingService.Callback
            public final void complete(PrismaHighlightingService.Result result) {
                CodeHighlighting.$r8$lambda$UD6oRboOjN26cgWJKaLuE9SbNzI(targetRequestsFindTarget, j, pending, i, i2, result);
            }
        });
        synchronized (obj) {
            try {
                if (targetRequestsFindTarget.ranges.get(Long.valueOf(j)) == pending) {
                    pending.request = request2;
                } else {
                    request2.cancel();
                }
            } finally {
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$UD6oRboOjN26cgWJKaLuE9SbNzI(final TargetRequests targetRequests, final long j, final Pending pending, final int i, final int i2, final PrismaHighlightingService.Result result) {
        boolean z;
        synchronized (TARGET_LOCK) {
            try {
                Spannable spannable = targetRequests.target.get();
                if (spannable != null && targetRequests.ranges.get(Long.valueOf(j)) == pending) {
                    if (!(spannable instanceof LockedSpannableString) || ((LockedSpannableString) spannable).ready) {
                        z = false;
                    } else {
                        apply(spannable, i, i2, result.tokens);
                        z = true;
                    }
                    final boolean z2 = z;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.utils.code.highlight.CodeHighlighting$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            CodeHighlighting.$r8$lambda$GdgiGNcLjy_wBk4a25lXH0Rbdks(targetRequests, j, pending, i, i2, z2, result);
                        }
                    });
                }
            } finally {
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$GdgiGNcLjy_wBk4a25lXH0Rbdks(TargetRequests targetRequests, long j, Pending pending, int i, int i2, boolean z, PrismaHighlightingService.Result result) {
        synchronized (TARGET_LOCK) {
            try {
                Spannable spannable = targetRequests.target.get();
                if (spannable != null && targetRequests.ranges.get(Long.valueOf(j)) == pending) {
                    boolean zSameSource = sameSource(spannable, i, i2, pending.source);
                    if (zSameSource && !z) {
                        apply(spannable, i, i2, result.tokens);
                    }
                    targetRequests.ranges.remove(Long.valueOf(j));
                    if (targetRequests.ranges.isEmpty()) {
                        TARGETS.remove(targetRequests);
                        if (spannable instanceof LockedSpannableString) {
                            ((LockedSpannableString) spannable).unlock();
                        }
                    }
                    if (zSameSource) {
                        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.emojiLoaded, new Object[0]);
                    }
                }
            } finally {
            }
        }
    }

    private static boolean sameSource(CharSequence charSequence, int i, int i2, String str) {
        if (i2 > charSequence.length() || i2 - i != str.length()) {
            return false;
        }
        for (int i3 = 0; i3 < str.length(); i3++) {
            if (charSequence.charAt(i + i3) != str.charAt(i3)) {
                return false;
            }
        }
        return true;
    }

    private static <T> T[] ownedSpans(Spannable spannable, int i, int i2, Class<T> cls) {
        if (spannable instanceof LockedSpannableString) {
            return (T[]) ((LockedSpannableString) spannable).rawSpans(i, i2, cls);
        }
        return (T[]) spannable.getSpans(i, i2, cls);
    }

    private static void apply(Spannable spannable, int i, int i2, PrismaHighlighter.Tokenization tokenization) {
        if (i == i2) {
            return;
        }
        for (ColorSpan colorSpan : (ColorSpan[]) ownedSpans(spannable, i, i2, ColorSpan.class)) {
            preserveOutside(spannable, i, i2, colorSpan);
            spannable.removeSpan(colorSpan);
        }
        for (SyntaxFontSpan syntaxFontSpan : (SyntaxFontSpan[]) ownedSpans(spannable, i, i2, SyntaxFontSpan.class)) {
            preserveOutside(spannable, i, i2, syntaxFontSpan);
            spannable.removeSpan(syntaxFontSpan);
        }
        if (tokenization == null) {
            return;
        }
        int[] iArrStyledRanges = tokenization.styledRanges();
        for (int i3 = 0; i3 < iArrStyledRanges.length; i3 += 3) {
            int i4 = iArrStyledRanges[i3] + i;
            int i5 = iArrStyledRanges[i3 + 1] + i;
            int i6 = iArrStyledRanges[i3 + 2];
            if (i4 >= i && i5 <= i2 && i4 < i5) {
                int i7 = i6 & 255;
                if (i7 != 0) {
                    spannable.setSpan(new ColorSpan(i7), i4, i5, 33);
                }
                if ((i6 & 768) != 0) {
                    spannable.setSpan(new SyntaxFontSpan(i6), i4, i5, 33);
                }
            }
        }
    }

    private static void preserveOutside(Spannable spannable, int i, int i2, Object obj) {
        int spanStart;
        int spanEnd;
        if (spannable instanceof LockedSpannableString) {
            LockedSpannableString lockedSpannableString = (LockedSpannableString) spannable;
            spanStart = lockedSpannableString.rawSpanStart(obj);
            spanEnd = lockedSpannableString.rawSpanEnd(obj);
        } else {
            spanStart = spannable.getSpanStart(obj);
            spanEnd = spannable.getSpanEnd(obj);
        }
        if (spanStart >= 0 && spanStart < i) {
            spannable.setSpan(copySyntaxSpan(obj), spanStart, Math.min(i, spanEnd), 33);
        }
        if (spanEnd > i2) {
            spannable.setSpan(copySyntaxSpan(obj), Math.max(i2, spanStart), spanEnd, 33);
        }
    }

    private static Object copySyntaxSpan(Object obj) {
        return obj instanceof ColorSpan ? new ColorSpan(((ColorSpan) obj).group) : new SyntaxFontSpan(((SyntaxFontSpan) obj).flags);
    }
}

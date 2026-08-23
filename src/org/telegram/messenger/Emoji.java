package org.telegram.messenger;

import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Spannable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.exteragram.messenger.utils.text.ZalgoFilter;
import com.exteragram.messenger.utils.ui.FontUtils;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import kotlin.UShort;
import okhttp3.internal.url._UrlKt;
import okhttp3.internal.ws.WebSocketProtocol;
import org.telegram.messenger.CompoundEmoji;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.ColoredImageSpan;

/* JADX INFO: loaded from: classes.dex */
public class Emoji {
    private static final String[] DEFAULT_RECENT;
    private static final int MAX_RECENT_EMOJI_COUNT = 48;
    public static int bigImgSize;
    public static int drawImgSize;
    private static SparseIntArray emojiAlphaMasks;
    private static final Bitmap[][] emojiBmp;
    public static final HashMap<String, String> emojiColor;
    private static final int[] emojiCounts;
    public static boolean emojiDrawingUseAlpha;
    public static float emojiDrawingYOffset;
    public static final HashMap<String, Integer> emojiUseHistory;
    public static final Runnable invalidateUiRunnable;
    private static final boolean[][] loadingEmoji;
    public static Paint placeholderPaint;
    public static final ArrayList<String> recentEmoji;
    private static boolean recentEmojiLoaded;
    private static final HashMap<CharSequence, DrawableInfo> rects = new HashMap<>();
    private static boolean inited = false;

    public static abstract class EmojiDrawable extends Drawable {
        public boolean fullSize = false;
        int placeholderColor = 268435456;

        public boolean isLoaded() {
            return false;
        }

        public void preload() {
        }
    }

    static {
        String[][] strArr = EmojiData.data;
        emojiCounts = new int[]{strArr[0].length, strArr[1].length, strArr[2].length, strArr[3].length, strArr[4].length, strArr[5].length, strArr[6].length, strArr[7].length};
        emojiBmp = new Bitmap[8][];
        loadingEmoji = new boolean[8][];
        emojiUseHistory = new HashMap<>();
        recentEmoji = new ArrayList<>();
        emojiColor = new HashMap<>();
        invalidateUiRunnable = new Runnable() { // from class: org.telegram.messenger.Emoji$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.emojiLoaded, new Object[0]);
            }
        };
        emojiDrawingUseAlpha = true;
        DEFAULT_RECENT = new String[]{"😂", "😘", "❤", "😍", "😊", "😁", "👍", "☺", "😔", "😄", "😭", "💋", "😒", "😳", "😜", "🙈", "😉", "😃", "😢", "😝", "😱", "😡", "😏", "😞", "😅", "😚", "🙊", "😌", "😀", "😋", "😆", "👌", "😐", "😕"};
        drawImgSize = AndroidUtilities.dp(20.0f);
        bigImgSize = AndroidUtilities.dp(AndroidUtilities.isTablet() ? 40.0f : 34.0f);
        int i = 0;
        while (true) {
            Bitmap[][] bitmapArr = emojiBmp;
            if (i >= bitmapArr.length) {
                break;
            }
            int i2 = emojiCounts[i];
            bitmapArr[i] = new Bitmap[i2];
            loadingEmoji[i] = new boolean[i2];
            i++;
        }
        for (int i3 = 0; i3 < EmojiData.data.length; i3++) {
            int i4 = 0;
            while (true) {
                String[] strArr2 = EmojiData.data[i3];
                if (i4 < strArr2.length) {
                    rects.put(strArr2[i4], new DrawableInfo((byte) i3, (short) i4, i4));
                    i4++;
                }
            }
        }
        Paint paint = new Paint();
        placeholderPaint = paint;
        paint.setColor(0);
    }

    public static void preloadEmoji(CharSequence charSequence) {
        DrawableInfo drawableInfo = getDrawableInfo(charSequence);
        if (drawableInfo != null) {
            loadEmoji(drawableInfo.page, drawableInfo.page2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void loadEmoji(final byte b2, final short s) {
        if (emojiBmp[b2][s] == null) {
            boolean[] zArr = loadingEmoji[b2];
            if (zArr[s]) {
                return;
            }
            zArr[s] = true;
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.Emoji$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    Emoji.$r8$lambda$GJCd0wAjo_k4MPoC4ervNAm2qe0(b2, s);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$GJCd0wAjo_k4MPoC4ervNAm2qe0(byte b2, short s) {
        Bitmap bitmapLoadBitmap;
        Locale locale = Locale.US;
        Bitmap bitmapLoadBitmap2 = loadBitmap("emoji/".concat(String.format(locale, "%d_%d.png", Byte.valueOf(b2), Short.valueOf(s))));
        try {
            if (emojiAlphaMasks == null) {
                emojiAlphaMasks = loadEmojiAlphaMasks();
            }
            SparseIntArray sparseIntArray = emojiAlphaMasks;
            int i = sparseIntArray != null ? sparseIntArray.get((b2 * 4096) + s, -1) : -1;
            if (bitmapLoadBitmap2 != null && i != -1 && (bitmapLoadBitmap = loadBitmap("emoji/masks/".concat(String.format(locale, "%d.png", Integer.valueOf(i))))) != null) {
                int width = bitmapLoadBitmap2.getWidth();
                int height = bitmapLoadBitmap2.getHeight();
                int i2 = width * height;
                int[] iArr = new int[i2];
                int[] iArr2 = new int[i2];
                bitmapLoadBitmap2.getPixels(iArr, 0, width, 0, 0, width, height);
                bitmapLoadBitmap.getPixels(iArr2, 0, width, 0, 0, width, height);
                bitmapLoadBitmap.recycle();
                for (int i3 = 0; i3 < i2; i3++) {
                    iArr[i3] = (iArr[i3] & 16777215) | ((iArr2[i3] & 255) << 24);
                }
                bitmapLoadBitmap2.recycle();
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                try {
                    bitmapCreateBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
                    bitmapLoadBitmap2 = bitmapCreateBitmap;
                } catch (Exception e) {
                    e = e;
                    bitmapLoadBitmap2 = bitmapCreateBitmap;
                    FileLog.m898e(e);
                }
            }
        } catch (Exception e2) {
            e = e2;
        }
        if (bitmapLoadBitmap2 != null) {
            emojiBmp[b2][s] = bitmapLoadBitmap2;
            Runnable runnable = invalidateUiRunnable;
            AndroidUtilities.cancelRunOnUIThread(runnable);
            AndroidUtilities.runOnUIThread(runnable);
        }
        loadingEmoji[b2][s] = false;
    }

    private static SparseIntArray loadEmojiAlphaMasks() {
        InputStream inputStreamOpen;
        ArrayList arrayList;
        byte[] bArr;
        int i;
        int i2;
        try {
            inputStreamOpen = ApplicationLoader.applicationContext.getAssets().open("emoji/metadata.bin");
            try {
                arrayList = new ArrayList();
                bArr = new byte[8192];
                i2 = 0;
            } finally {
            }
        } catch (Exception e) {
            FileLog.m898e(e);
            return null;
        }
        while (true) {
            int i3 = inputStreamOpen.read(bArr);
            if (i3 == -1) {
                break;
            }
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, 0, bArr2, 0, i3);
            arrayList.add(bArr2);
            i2 += i3;
            FileLog.m898e(e);
            return null;
        }
        byte[] bArr3 = new byte[i2];
        int size = arrayList.size();
        int length = 0;
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            byte[] bArr4 = (byte[]) obj;
            System.arraycopy(bArr4, 0, bArr3, length, bArr4.length);
            length += bArr4.length;
        }
        ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr3).order(ByteOrder.LITTLE_ENDIAN);
        int i5 = i2 / 4;
        SparseIntArray sparseIntArray = new SparseIntArray(i5);
        for (i = 0; i < i5; i++) {
            sparseIntArray.put(byteBufferOrder.getShort() & UShort.MAX_VALUE, 65535 & byteBufferOrder.getShort());
        }
        inputStreamOpen.close();
        return sparseIntArray;
    }

    public static Bitmap loadBitmap(String str) {
        Bitmap bitmapDecodeStream;
        try {
            int i = AndroidUtilities.density <= 1.0f ? 2 : 1;
            try {
                InputStream inputStreamOpen = ApplicationLoader.applicationContext.getAssets().open(str);
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = false;
                options.inSampleSize = i;
                bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen, null, options);
                try {
                    inputStreamOpen.close();
                    return bitmapDecodeStream;
                } catch (Throwable th) {
                    th = th;
                    FileLog.m898e(th);
                    return bitmapDecodeStream;
                }
            } catch (Throwable th2) {
                th = th2;
                bitmapDecodeStream = null;
            }
        } catch (Throwable th3) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m897e("Error loading emoji", th3);
            }
            return null;
        }
    }

    public static void invalidateAll(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                invalidateAll(viewGroup.getChildAt(i));
            }
            return;
        }
        if (view instanceof TextView) {
            view.invalidate();
        }
    }

    public static String fixEmoji(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt < 55356 || cCharAt > 55358) {
                if (cCharAt == 8419) {
                    break;
                }
                if (cCharAt >= '#' && cCharAt <= 12953 && EmojiData.emojiToFE0FMap.containsKey(Character.valueOf(cCharAt))) {
                    StringBuilder sb = new StringBuilder();
                    i++;
                    sb.append(str.substring(0, i));
                    sb.append("️");
                    sb.append(str.substring(i));
                    str = sb.toString();
                    length++;
                }
            } else if (cCharAt != 55356 || i >= length - 1) {
                i++;
            } else {
                int i2 = i + 1;
                char cCharAt2 = str.charAt(i2);
                if (cCharAt2 == 56879 || cCharAt2 == 56324 || cCharAt2 == 56858 || cCharAt2 == 56703 || cCharAt2 == 57331 || cCharAt2 == 57131 || cCharAt2 == 56385 || cCharAt2 == 56693 || cCharAt2 == 57292 || cCharAt2 == 57291) {
                    StringBuilder sb2 = new StringBuilder();
                    i += 2;
                    sb2.append(str.substring(0, i));
                    sb2.append("️");
                    sb2.append(str.substring(i));
                    str = sb2.toString();
                    length++;
                } else {
                    i = i2;
                }
            }
            i++;
        }
        return str;
    }

    public static EmojiDrawable getEmojiDrawable(CharSequence charSequence) {
        CompoundEmoji.CompoundEmojiDrawable compoundEmojiDrawable;
        DrawableInfo drawableInfo = getDrawableInfo(charSequence);
        if (drawableInfo != null) {
            SimpleEmojiDrawable simpleEmojiDrawable = new SimpleEmojiDrawable(drawableInfo, endsWithRightArrow(charSequence));
            int i = drawImgSize;
            simpleEmojiDrawable.setBounds(0, 0, i, i);
            return simpleEmojiDrawable;
        }
        if (charSequence == null || (compoundEmojiDrawable = CompoundEmoji.getCompoundEmojiDrawable(charSequence.toString())) == null) {
            return null;
        }
        int i2 = drawImgSize;
        compoundEmojiDrawable.setBounds(0, 0, i2, i2);
        return compoundEmojiDrawable;
    }

    public static boolean endsWithRightArrow(CharSequence charSequence) {
        return charSequence != null && charSequence.length() > 2 && charSequence.charAt(charSequence.length() - 2) == 8205 && charSequence.charAt(charSequence.length() - 1) == 10145;
    }

    private static DrawableInfo getDrawableInfo(CharSequence charSequence) {
        CharSequence charSequence2;
        if (endsWithRightArrow(charSequence)) {
            charSequence = charSequence.subSequence(0, charSequence.length() - 2);
        }
        HashMap<CharSequence, DrawableInfo> map = rects;
        DrawableInfo drawableInfo = map.get(charSequence);
        return (drawableInfo != null || (charSequence2 = EmojiData.emojiAliasMap.get(charSequence)) == null) ? drawableInfo : map.get(charSequence2);
    }

    public static boolean isValidEmoji(CharSequence charSequence) {
        CharSequence charSequence2;
        if (TextUtils.isEmpty(charSequence)) {
            return false;
        }
        HashMap<CharSequence, DrawableInfo> map = rects;
        DrawableInfo drawableInfo = map.get(charSequence);
        if (drawableInfo == null && (charSequence2 = EmojiData.emojiAliasMap.get(charSequence)) != null) {
            drawableInfo = map.get(charSequence2);
        }
        return drawableInfo != null;
    }

    public static Drawable getEmojiBigDrawable(String str) {
        CharSequence charSequence;
        EmojiDrawable compoundEmojiDrawable = CompoundEmoji.getCompoundEmojiDrawable(str);
        if (compoundEmojiDrawable != null) {
            int i = drawImgSize;
            compoundEmojiDrawable.setBounds(0, 0, i, i);
        } else {
            compoundEmojiDrawable = null;
        }
        if (compoundEmojiDrawable == null) {
            compoundEmojiDrawable = getEmojiDrawable(str);
        }
        if (compoundEmojiDrawable == null && (charSequence = EmojiData.emojiAliasMap.get(str)) != null) {
            compoundEmojiDrawable = getEmojiDrawable(charSequence);
        }
        if (compoundEmojiDrawable == null) {
            return null;
        }
        int i2 = bigImgSize;
        compoundEmojiDrawable.setBounds(0, 0, i2, i2);
        compoundEmojiDrawable.fullSize = true;
        return compoundEmojiDrawable;
    }

    public static class SimpleEmojiDrawable extends EmojiDrawable {
        private static Paint paint = new Paint(2);
        private static Rect rect = new Rect();
        private static final TextPaint textPaint = new TextPaint(1);
        private DrawableInfo info;
        private boolean invert;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public SimpleEmojiDrawable(DrawableInfo drawableInfo, boolean z) {
            this.info = drawableInfo;
            this.invert = z;
        }

        public DrawableInfo getDrawableInfo() {
            return this.info;
        }

        public Rect getDrawRect() {
            Rect bounds = getBounds();
            int iCenterX = bounds.centerX();
            int iCenterY = bounds.centerY();
            Rect rect2 = rect;
            boolean z = this.fullSize;
            rect2.left = iCenterX - ((z ? Emoji.bigImgSize : Emoji.drawImgSize) / 2);
            rect.right = iCenterX + ((z ? Emoji.bigImgSize : Emoji.drawImgSize) / 2);
            rect.top = iCenterY - ((z ? Emoji.bigImgSize : Emoji.drawImgSize) / 2);
            rect.bottom = iCenterY + ((z ? Emoji.bigImgSize : Emoji.drawImgSize) / 2);
            return rect;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            Rect bounds;
            if (!SharedConfig.useSystemEmoji && !isLoaded()) {
                DrawableInfo drawableInfo = this.info;
                Emoji.loadEmoji(drawableInfo.page, drawableInfo.page2);
                Emoji.placeholderPaint.setColor(this.placeholderColor);
                Rect bounds2 = getBounds();
                canvas.drawCircle(bounds2.centerX(), bounds2.centerY(), bounds2.width() * 0.4f, Emoji.placeholderPaint);
                return;
            }
            if (this.fullSize) {
                bounds = getDrawRect();
            } else {
                bounds = getBounds();
            }
            if (SharedConfig.useSystemEmoji) {
                String[][] strArr = EmojiData.data;
                DrawableInfo drawableInfo2 = this.info;
                String strFixEmoji = Emoji.fixEmoji(strArr[drawableInfo2.page][drawableInfo2.emojiIndex]);
                TextPaint textPaint2 = textPaint;
                textPaint2.setTextSize(bounds.height() * 0.8f);
                textPaint2.setTypeface(FontUtils.getSystemEmojiTypeface());
                canvas.drawText(strFixEmoji, 0, strFixEmoji.length(), bounds.left, bounds.bottom - (bounds.height() * 0.225f), (Paint) textPaint2);
                return;
            }
            if (canvas.quickReject(bounds.left, bounds.top, bounds.right, bounds.bottom, Canvas.EdgeType.AA)) {
                return;
            }
            if (this.invert) {
                canvas.save();
                canvas.scale(-1.0f, 1.0f, bounds.centerX(), bounds.centerY());
            }
            Bitmap[][] bitmapArr = Emoji.emojiBmp;
            DrawableInfo drawableInfo3 = this.info;
            canvas.drawBitmap(bitmapArr[drawableInfo3.page][drawableInfo3.page2], (Rect) null, bounds, paint);
            if (this.invert) {
                canvas.restore();
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            paint.setAlpha(i);
        }

        @Override // org.telegram.messenger.Emoji.EmojiDrawable
        public boolean isLoaded() {
            Bitmap[][] bitmapArr = Emoji.emojiBmp;
            DrawableInfo drawableInfo = this.info;
            return bitmapArr[drawableInfo.page][drawableInfo.page2] != null;
        }

        @Override // org.telegram.messenger.Emoji.EmojiDrawable
        public void preload() {
            if (isLoaded()) {
                return;
            }
            DrawableInfo drawableInfo = this.info;
            Emoji.loadEmoji(drawableInfo.page, drawableInfo.page2);
        }
    }

    public static class DrawableInfo {
        public int emojiIndex;
        public byte page;
        public short page2;

        public DrawableInfo(byte b2, short s, int i) {
            this.page = b2;
            this.page2 = s;
            this.emojiIndex = i;
        }
    }

    public static class EmojiSpanRange {
        public CharSequence code;
        public int end;
        public int start;

        public EmojiSpanRange(int i, int i2, CharSequence charSequence) {
            this.start = i;
            this.end = i2;
            this.code = charSequence;
        }
    }

    public static boolean fullyConsistsOfEmojis(CharSequence charSequence) {
        int[] iArr = new int[1];
        parseEmojis(charSequence, iArr);
        return iArr[0] > 0;
    }

    public static ArrayList<EmojiSpanRange> parseEmojis(CharSequence charSequence) {
        return parseEmojis(charSequence, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01a6 A[Catch: Exception -> 0x0078, TryCatch #0 {Exception -> 0x0078, blocks: (B:10:0x002e, B:28:0x006c, B:87:0x011c, B:89:0x0120, B:91:0x012d, B:95:0x013b, B:122:0x01a6, B:124:0x01aa, B:128:0x01b7, B:130:0x01bd, B:167:0x021a, B:146:0x01ec, B:148:0x01f0, B:158:0x0205, B:160:0x0209, B:171:0x0225, B:173:0x022d, B:175:0x0231, B:177:0x023c, B:181:0x024a, B:184:0x025a, B:186:0x0266, B:188:0x0269, B:189:0x027a, B:96:0x0148, B:98:0x014f, B:100:0x015b, B:104:0x016b, B:106:0x0171, B:107:0x0178, B:109:0x0180, B:110:0x0187, B:112:0x0191, B:116:0x019a, B:16:0x0042, B:18:0x004d, B:32:0x007b, B:43:0x0098, B:41:0x008f, B:48:0x00a8, B:56:0x00bc, B:76:0x00fc, B:67:0x00de, B:74:0x00f4), top: B:198:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0223 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x022d A[Catch: Exception -> 0x0078, TryCatch #0 {Exception -> 0x0078, blocks: (B:10:0x002e, B:28:0x006c, B:87:0x011c, B:89:0x0120, B:91:0x012d, B:95:0x013b, B:122:0x01a6, B:124:0x01aa, B:128:0x01b7, B:130:0x01bd, B:167:0x021a, B:146:0x01ec, B:148:0x01f0, B:158:0x0205, B:160:0x0209, B:171:0x0225, B:173:0x022d, B:175:0x0231, B:177:0x023c, B:181:0x024a, B:184:0x025a, B:186:0x0266, B:188:0x0269, B:189:0x027a, B:96:0x0148, B:98:0x014f, B:100:0x015b, B:104:0x016b, B:106:0x0171, B:107:0x0178, B:109:0x0180, B:110:0x0187, B:112:0x0191, B:116:0x019a, B:16:0x0042, B:18:0x004d, B:32:0x007b, B:43:0x0098, B:41:0x008f, B:48:0x00a8, B:56:0x00bc, B:76:0x00fc, B:67:0x00de, B:74:0x00f4), top: B:198:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0283 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ArrayList<EmojiSpanRange> parseEmojis(CharSequence charSequence, int[] iArr) {
        boolean z;
        char cCharAt;
        boolean z2;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        char cCharAt2;
        int i7;
        int i8;
        ArrayList<EmojiSpanRange> arrayList = new ArrayList<>();
        if (charSequence != null && charSequence.length() > 0) {
            StringBuilder sb = new StringBuilder(16);
            int length = charSequence.length();
            int i9 = -1;
            int[] iArr2 = iArr;
            int i10 = -1;
            int i11 = 0;
            int i12 = 0;
            long j = 0;
            int i13 = 0;
            boolean z3 = false;
            boolean z4 = false;
            while (i12 < length) {
                try {
                    char cCharAt3 = charSequence.charAt(i12);
                    if ((cCharAt3 >= 55356 && cCharAt3 <= 55358) || (j != 0 && (j & (-4294967296L)) == 0 && (j & WebSocketProtocol.PAYLOAD_SHORT_MAX) == 55356 && cCharAt3 >= 56806 && cCharAt3 <= 56831)) {
                        if (i10 == i9) {
                            i10 = i12;
                        } else if (z3) {
                            i10 = i12;
                            i13 = 0;
                            z3 = false;
                        }
                        sb.append(cCharAt3);
                        i13++;
                        j = (j << 16) | ((long) cCharAt3);
                    } else {
                        if ((sb.length() > 0 && (cCharAt3 == 9792 || cCharAt3 == 9794 || cCharAt3 == 9877)) || (j > 0 && (61440 & cCharAt3) == 53248)) {
                            sb.append(cCharAt3);
                            i13++;
                            j = 0;
                        } else if (cCharAt3 != 8419) {
                            if (cCharAt3 == 169 || cCharAt3 == 174 || (cCharAt3 >= 8252 && cCharAt3 <= 12953)) {
                                if (EmojiData.dataCharsMap.containsKey(Character.valueOf(cCharAt3))) {
                                    if (i10 == -1) {
                                        i10 = i12;
                                    } else if (z3) {
                                        i10 = i12;
                                        i13 = 0;
                                        z3 = false;
                                    }
                                    i13++;
                                    sb.append(cCharAt3);
                                }
                            }
                            if (i10 != -1) {
                                sb.setLength(0);
                                z = false;
                                i10 = -1;
                                i13 = 0;
                                z3 = false;
                                z4 = false;
                            } else if (cCharAt3 != 65039 && cCharAt3 != '\n' && cCharAt3 != ' ' && cCharAt3 != '\t') {
                                z = true;
                            }
                            if (z4 || (i8 = i12 + 2) >= length) {
                                z2 = z;
                            } else {
                                int i14 = i12 + 1;
                                char cCharAt4 = charSequence.charAt(i14);
                                z2 = z;
                                if (cCharAt4 == 55356) {
                                    char cCharAt5 = charSequence.charAt(i8);
                                    if (cCharAt5 >= 57339 && cCharAt5 <= 57343) {
                                        sb.append(charSequence.subSequence(i14, i12 + 3));
                                        i13 += 2;
                                        i = i8;
                                    }
                                    i2 = i;
                                    i3 = 0;
                                    while (i3 < 3) {
                                        int i15 = i2 + 1;
                                        if (i15 < length) {
                                            char cCharAt6 = charSequence.charAt(i15);
                                            i7 = i;
                                            if (i3 == 1) {
                                                if (cCharAt6 == 8205 && sb.length() > 0) {
                                                    sb.append(cCharAt6);
                                                    i13++;
                                                    i2 = i15;
                                                    z4 = false;
                                                    z2 = false;
                                                }
                                            } else if (cCharAt3 == '*' || cCharAt3 == '#' || (cCharAt3 >= '0' && cCharAt3 <= '9')) {
                                                if (cCharAt6 >= 65024) {
                                                    if (cCharAt6 <= 65039) {
                                                        i13++;
                                                        if (!z4) {
                                                            z4 = i2 + 2 >= length;
                                                        }
                                                        i2 = i15;
                                                        i10 = i7;
                                                        z3 = true;
                                                    }
                                                }
                                            } else if (i10 != -1 && cCharAt6 >= 65024) {
                                                if (cCharAt6 <= 65039) {
                                                    i13++;
                                                    if (!z4) {
                                                        z4 = i2 + 2 >= length;
                                                    }
                                                    i2 = i15;
                                                }
                                            }
                                            i3++;
                                            i = i7;
                                        } else {
                                            i7 = i;
                                        }
                                        i3++;
                                        i = i7;
                                    }
                                    int i16 = i;
                                    if (z2 && iArr2 != null) {
                                        iArr2[0] = 0;
                                        iArr2 = null;
                                    }
                                    if (z4 && (i5 = i2 + 2) < length) {
                                        i6 = i2 + 1;
                                        if (charSequence.charAt(i6) == 55356 && (cCharAt2 = charSequence.charAt(i5)) >= 57339 && cCharAt2 <= 57343) {
                                            sb.append(charSequence.subSequence(i6, i2 + 3));
                                            i13 += 2;
                                            i2 = i5;
                                        }
                                    }
                                    if (z4) {
                                        if (iArr2 != null) {
                                            iArr2[0] = iArr2[0] + 1;
                                        }
                                        if (i10 >= 0 && (i4 = i13 + i10) <= length) {
                                            arrayList.add(new EmojiSpanRange(i10, i4, sb.subSequence(0, sb.length())));
                                        }
                                        sb.setLength(0);
                                        i10 = -1;
                                        i13 = 0;
                                        z3 = false;
                                        z4 = false;
                                    }
                                    i12 = i2 + 1;
                                    i11 = i16;
                                    i9 = -1;
                                } else if (sb.length() >= 2 && sb.charAt(0) == 55356 && sb.charAt(1) == 57332 && cCharAt4 == 56128) {
                                    while (true) {
                                        if (i14 < charSequence.length()) {
                                            sb.append(charSequence.charAt(i14));
                                        }
                                        int i17 = i14 + 1;
                                        if (i17 < charSequence.length()) {
                                            sb.append(charSequence.charAt(i17));
                                        }
                                        i13 += 2;
                                        int i18 = i14 + 2;
                                        if (i18 >= charSequence.length() || charSequence.charAt(i18) != 56128) {
                                            break;
                                        }
                                        i14 = i18;
                                    }
                                    i12 = i14 + 1;
                                }
                            }
                            i = i12;
                            i2 = i;
                            i3 = 0;
                            while (i3 < 3) {
                            }
                            int i162 = i;
                            if (z2) {
                                iArr2[0] = 0;
                                iArr2 = null;
                            }
                            if (z4) {
                                i6 = i2 + 1;
                                if (charSequence.charAt(i6) == 55356) {
                                    sb.append(charSequence.subSequence(i6, i2 + 3));
                                    i13 += 2;
                                    i2 = i5;
                                }
                            }
                            if (z4) {
                            }
                            i12 = i2 + 1;
                            i11 = i162;
                            i9 = -1;
                        } else if (i12 > 0 && (((cCharAt = charSequence.charAt(i11)) >= '0' && cCharAt <= '9') || cCharAt == '#' || cCharAt == '*')) {
                            i13 = (i12 - i11) + 1;
                            sb.append(cCharAt);
                            sb.append(cCharAt3);
                            i10 = i11;
                            z4 = true;
                            z3 = false;
                        }
                        z4 = true;
                    }
                    z = false;
                    if (z4) {
                        z2 = z;
                        i = i12;
                    }
                    i2 = i;
                    i3 = 0;
                    while (i3 < 3) {
                    }
                    int i1622 = i;
                    if (z2) {
                    }
                    if (z4) {
                    }
                    if (z4) {
                    }
                    i12 = i2 + 1;
                    i11 = i1622;
                    i9 = -1;
                } catch (Exception e) {
                    FileLog.m898e(e);
                }
            }
            if (iArr2 != null && sb.length() != 0) {
                iArr2[0] = 0;
            }
        }
        return arrayList;
    }

    public static CharSequence replaceEmoji(CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt, boolean z) {
        return replaceEmoji(charSequence, fontMetricsInt, z, (int[]) null);
    }

    public static CharSequence replaceEmoji(CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt, boolean z, float f) {
        return replaceEmoji(charSequence, fontMetricsInt, z, null, 0, f, 0);
    }

    public static CharSequence replaceEmoji(CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt, boolean z, int[] iArr) {
        return replaceEmoji(charSequence, fontMetricsInt, z, iArr, 0);
    }

    public static CharSequence replaceEmoji(CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt, boolean z, int[] iArr, int i) {
        return replaceEmoji(charSequence, fontMetricsInt, z, iArr, i, 1.0f, 0);
    }

    public static CharSequence replaceEmoji(CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt, boolean z, int[] iArr, int i, float f, int i2) {
        Spannable spannableNewSpannable;
        int i3;
        int i4;
        if (charSequence == null || charSequence.length() == 0) {
            return charSequence;
        }
        if (!z && (charSequence instanceof Spannable)) {
            spannableNewSpannable = (Spannable) charSequence;
        } else {
            spannableNewSpannable = Spannable.Factory.getInstance().newSpannable(charSequence);
        }
        ArrayList<EmojiSpanRange> emojis = parseEmojis(spannableNewSpannable, iArr);
        if (emojis.isEmpty()) {
            return ZalgoFilter.filterSpannable(charSequence);
        }
        AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) spannableNewSpannable.getSpans(0, spannableNewSpannable.length(), AnimatedEmojiSpan.class);
        ColoredImageSpan[] coloredImageSpanArr = (ColoredImageSpan[]) spannableNewSpannable.getSpans(0, spannableNewSpannable.length(), ColoredImageSpan.class);
        int i5 = (SharedConfig.getDevicePerformanceClass() >= 2 ? 100 : 50) - i2;
        for (int i6 = 0; i6 < emojis.size(); i6++) {
            try {
                EmojiSpanRange emojiSpanRange = emojis.get(i6);
                if (animatedEmojiSpanArr != null && animatedEmojiSpanArr.length > 0) {
                    for (AnimatedEmojiSpan animatedEmojiSpan : animatedEmojiSpanArr) {
                        i4 = (animatedEmojiSpan != null && spannableNewSpannable.getSpanStart(animatedEmojiSpan) == emojiSpanRange.start && spannableNewSpannable.getSpanEnd(animatedEmojiSpan) == emojiSpanRange.end) ? 0 : i4 + 1;
                    }
                }
                if (coloredImageSpanArr != null && coloredImageSpanArr.length > 0) {
                    for (ColoredImageSpan coloredImageSpan : coloredImageSpanArr) {
                        i3 = (coloredImageSpan != null && spannableNewSpannable.getSpanStart(coloredImageSpan) == emojiSpanRange.start && spannableNewSpannable.getSpanEnd(coloredImageSpan) == emojiSpanRange.end) ? 0 : i3 + 1;
                    }
                }
                EmojiDrawable emojiDrawable = getEmojiDrawable(emojiSpanRange.code);
                if (emojiDrawable != null) {
                    EmojiSpan emojiSpan = new EmojiSpan(emojiDrawable, i, fontMetricsInt);
                    CharSequence charSequence2 = emojiSpanRange.code;
                    emojiSpan.emoji = charSequence2 == null ? null : charSequence2.toString();
                    emojiSpan.scale = f;
                    spannableNewSpannable.setSpan(emojiSpan, emojiSpanRange.start, emojiSpanRange.end, 33);
                }
            } catch (Exception e) {
                FileLog.m898e(e);
            }
            if (Build.VERSION.SDK_INT >= 29 && i6 + 1 >= i5) {
                break;
            }
        }
        return ZalgoFilter.filterSpannable(spannableNewSpannable);
    }

    public static CharSequence replaceWithRestrictedEmoji(CharSequence charSequence, TextView textView, Runnable runnable) {
        return replaceWithRestrictedEmoji(charSequence, textView.getPaint().getFontMetricsInt(), runnable);
    }

    public static CharSequence replaceWithRestrictedEmoji(CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt, Runnable runnable) {
        return replaceWithRestrictedEmoji(charSequence, fontMetricsInt, 20, runnable);
    }

    public static CharSequence replaceWithRestrictedEmoji(CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt, int i, final Runnable runnable) {
        Spannable spannableNewSpannable;
        EmojiSpanRange emojiSpanRange;
        TLRPC.Document document;
        AnimatedEmojiSpan animatedEmojiSpan;
        int i2;
        if (SharedConfig.useSystemEmoji || charSequence == null || charSequence.length() == 0) {
            return charSequence;
        }
        int i3 = UserConfig.selectedAccount;
        TLRPC.TL_inputStickerSetShortName tL_inputStickerSetShortName = new TLRPC.TL_inputStickerSetShortName();
        tL_inputStickerSetShortName.short_name = "RestrictedEmoji";
        TLRPC.TL_messages_stickerSet stickerSet = MediaDataController.getInstance(i3).getStickerSet(tL_inputStickerSetShortName, 0, false, true, runnable == null ? null : new Utilities.Callback() { // from class: org.telegram.messenger.Emoji$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                runnable.run();
            }
        });
        if (charSequence instanceof Spannable) {
            spannableNewSpannable = (Spannable) charSequence;
        } else {
            spannableNewSpannable = Spannable.Factory.getInstance().newSpannable(charSequence.toString());
        }
        ArrayList<EmojiSpanRange> emojis = parseEmojis(spannableNewSpannable, null);
        if (emojis.isEmpty()) {
            return charSequence;
        }
        AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) spannableNewSpannable.getSpans(0, spannableNewSpannable.length(), AnimatedEmojiSpan.class);
        int i4 = SharedConfig.getDevicePerformanceClass() >= 2 ? 100 : 50;
        for (int i5 = 0; i5 < emojis.size(); i5++) {
            try {
                emojiSpanRange = emojis.get(i5);
                if (animatedEmojiSpanArr != null) {
                    for (AnimatedEmojiSpan animatedEmojiSpan2 : animatedEmojiSpanArr) {
                        i2 = (animatedEmojiSpan2 != null && spannableNewSpannable.getSpanStart(animatedEmojiSpan2) == emojiSpanRange.start && spannableNewSpannable.getSpanEnd(animatedEmojiSpan2) == emojiSpanRange.end) ? 0 : i2 + 1;
                    }
                }
                if (stickerSet != null) {
                    ArrayList<TLRPC.Document> arrayList = stickerSet.documents;
                    int size = arrayList.size();
                    int i6 = 0;
                    while (i6 < size) {
                        TLRPC.Document document2 = arrayList.get(i6);
                        i6++;
                        document = document2;
                        if (MessageObject.findAnimatedEmojiEmoticon(document, null).contains(emojiSpanRange.code)) {
                            break;
                        }
                    }
                }
                document = null;
                if (document != null) {
                    animatedEmojiSpan = new AnimatedEmojiSpan(document, fontMetricsInt);
                } else {
                    animatedEmojiSpan = new AnimatedEmojiSpan(0L, fontMetricsInt);
                }
                animatedEmojiSpan.emoji = emojiSpanRange.code.toString();
            } catch (Exception e) {
                e = e;
            }
            try {
                animatedEmojiSpan.cacheType = i;
                spannableNewSpannable.setSpan(animatedEmojiSpan, emojiSpanRange.start, emojiSpanRange.end, 33);
            } catch (Exception e2) {
                e = e2;
                FileLog.m898e(e);
            }
            if (Build.VERSION.SDK_INT >= 29 && i5 + 1 >= i4) {
                break;
            }
        }
        return spannableNewSpannable;
    }

    public static class EmojiSpan extends ImageSpan {
        public boolean drawn;
        public String emoji;
        public Paint.FontMetricsInt fontMetrics;
        public float lastDrawX;
        public float lastDrawY;
        public float scale;
        public int size;

        public EmojiSpan(Drawable drawable, int i, Paint.FontMetricsInt fontMetricsInt) {
            super(drawable, i);
            this.scale = 1.0f;
            this.size = AndroidUtilities.dp(20.0f);
            this.fontMetrics = fontMetricsInt;
            if (fontMetricsInt != null) {
                int iAbs = Math.abs(fontMetricsInt.descent) + Math.abs(this.fontMetrics.ascent);
                this.size = iAbs;
                if (iAbs == 0) {
                    this.size = AndroidUtilities.dp(20.0f);
                }
            }
        }

        public void replaceFontMetrics(Paint.FontMetricsInt fontMetricsInt, int i) {
            this.fontMetrics = fontMetricsInt;
            this.size = i;
        }

        public void replaceFontMetrics(Paint.FontMetricsInt fontMetricsInt) {
            this.fontMetrics = fontMetricsInt;
            if (fontMetricsInt != null) {
                int iAbs = Math.abs(fontMetricsInt.descent) + Math.abs(this.fontMetrics.ascent);
                this.size = iAbs;
                if (iAbs == 0) {
                    this.size = AndroidUtilities.dp(20.0f);
                }
            }
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            if (fontMetricsInt == null) {
                fontMetricsInt = new Paint.FontMetricsInt();
            }
            Paint.FontMetricsInt fontMetricsInt2 = fontMetricsInt;
            int i3 = (int) (this.scale * this.size);
            Paint.FontMetricsInt fontMetricsInt3 = this.fontMetrics;
            if (fontMetricsInt3 == null) {
                int size = super.getSize(paint, charSequence, i, i2, fontMetricsInt2);
                int iDp = AndroidUtilities.dp(8.0f);
                int iDp2 = AndroidUtilities.dp(10.0f);
                int i4 = (-iDp2) - iDp;
                fontMetricsInt2.top = i4;
                int i5 = iDp2 - iDp;
                fontMetricsInt2.bottom = i5;
                fontMetricsInt2.ascent = i4;
                fontMetricsInt2.leading = 0;
                fontMetricsInt2.descent = i5;
                return size;
            }
            fontMetricsInt2.ascent = fontMetricsInt3.ascent;
            fontMetricsInt2.descent = fontMetricsInt3.descent;
            fontMetricsInt2.top = fontMetricsInt3.top;
            fontMetricsInt2.bottom = fontMetricsInt3.bottom;
            if (getDrawable() != null) {
                getDrawable().setBounds(0, 0, i3, i3);
            }
            return i3;
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
            boolean z;
            this.lastDrawX = ((this.scale * this.size) / 2.0f) + f;
            this.lastDrawY = i3 + ((i5 - i3) / 2.0f);
            boolean z2 = true;
            this.drawn = true;
            if (paint.getAlpha() == 255 || !Emoji.emojiDrawingUseAlpha) {
                z = false;
            } else {
                getDrawable().setAlpha(paint.getAlpha());
                z = true;
            }
            float f2 = Emoji.emojiDrawingYOffset;
            int i6 = this.size;
            float f3 = f2 - ((i6 - (this.scale * i6)) / 2.0f);
            if (f3 != 0.0f) {
                canvas.save();
                canvas.translate(0.0f, f3);
            } else {
                z2 = false;
            }
            super.draw(canvas, charSequence, i, i2, f, i3, i4, i5, paint);
            if (z2) {
                canvas.restore();
            }
            if (z) {
                getDrawable().setAlpha(255);
            }
        }

        @Override // android.text.style.ReplacementSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            if (getDrawable() instanceof EmojiDrawable) {
                ((EmojiDrawable) getDrawable()).placeholderColor = 285212671 & textPaint.getColor();
            }
            super.updateDrawState(textPaint);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                EmojiSpan emojiSpan = (EmojiSpan) obj;
                if (Float.compare(this.scale, emojiSpan.scale) == 0 && this.size == emojiSpan.size && Objects.equals(this.emoji, emojiSpan.emoji)) {
                    return true;
                }
            }
            return false;
        }
    }

    public static void addRecentEmoji(String str) {
        HashMap<String, Integer> map = emojiUseHistory;
        Integer num = map.get(str);
        if (num == null) {
            num = 0;
        }
        if (num.intValue() == 0 && map.size() >= 48) {
            ArrayList<String> arrayList = recentEmoji;
            map.remove(arrayList.get(arrayList.size() - 1));
            arrayList.set(arrayList.size() - 1, str);
        }
        map.put(str, Integer.valueOf(num.intValue() + 1));
    }

    public static void removeRecentEmoji(String str) {
        HashMap<String, Integer> map = emojiUseHistory;
        map.remove(str);
        ArrayList<String> arrayList = recentEmoji;
        arrayList.remove(str);
        if (map.isEmpty() || arrayList.isEmpty()) {
            addRecentEmoji(DEFAULT_RECENT[0]);
        }
    }

    public static void sortEmoji() {
        recentEmoji.clear();
        Iterator<Map.Entry<String, Integer>> it = emojiUseHistory.entrySet().iterator();
        while (it.hasNext()) {
            recentEmoji.add(it.next().getKey());
        }
        Collections.sort(recentEmoji, new Comparator() { // from class: org.telegram.messenger.Emoji$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Emoji.m5171$r8$lambda$tEFea3Q0DiBPnoNT35a881s2dE((String) obj, (String) obj2);
            }
        });
        while (true) {
            ArrayList<String> arrayList = recentEmoji;
            if (arrayList.size() <= 48) {
                return;
            } else {
                arrayList.remove(arrayList.size() - 1);
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$tEFea3Q0DiBPnoNT-35a881s2dE, reason: not valid java name */
    public static /* synthetic */ int m5171$r8$lambda$tEFea3Q0DiBPnoNT35a881s2dE(String str, String str2) {
        HashMap<String, Integer> map = emojiUseHistory;
        Integer num = map.get(str);
        Integer num2 = map.get(str2);
        if (num == null) {
            num = num;
        }
        num = num2 != null ? num2 : 0;
        if (num.intValue() > num.intValue()) {
            return -1;
        }
        return num.intValue() < num.intValue() ? 1 : 0;
    }

    public static void saveRecentEmoji() {
        SharedPreferences globalEmojiSettings = MessagesController.getGlobalEmojiSettings();
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, Integer> entry : emojiUseHistory.entrySet()) {
            if (sb.length() != 0) {
                sb.append(",");
            }
            sb.append(entry.getKey());
            sb.append("=");
            sb.append(entry.getValue());
        }
        globalEmojiSettings.edit().putString("emojis2", sb.toString()).apply();
    }

    public static void clearRecentEmoji() {
        MessagesController.getGlobalEmojiSettings().edit().putBoolean("filled_default", true).apply();
        emojiUseHistory.clear();
        recentEmoji.clear();
        saveRecentEmoji();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void loadRecentEmoji() {
        char c2;
        if (recentEmojiLoaded) {
            return;
        }
        char c3 = 1;
        recentEmojiLoaded = true;
        SharedPreferences globalEmojiSettings = MessagesController.getGlobalEmojiSettings();
        try {
            emojiUseHistory.clear();
            if (globalEmojiSettings.contains("emojis")) {
                try {
                    String string = globalEmojiSettings.getString("emojis", _UrlKt.FRAGMENT_ENCODE_SET);
                    if (string != null && string.length() > 0) {
                        String[] strArrSplit = string.split(",");
                        int length = strArrSplit.length;
                        int i = 0;
                        while (i < length) {
                            String[] strArrSplit2 = strArrSplit[i].split("=");
                            long jLongValue = Utilities.parseLong(strArrSplit2[0]).longValue();
                            StringBuilder sb = new StringBuilder();
                            char c4 = c3;
                            for (int i2 = 0; i2 < 4; i2++) {
                                sb.insert(0, (char) jLongValue);
                                jLongValue >>= 16;
                                if (jLongValue == 0) {
                                    break;
                                }
                            }
                            if (sb.length() > 0) {
                                emojiUseHistory.put(sb.toString(), Utilities.parseInt((CharSequence) strArrSplit2[c4]));
                            }
                            i++;
                            c3 = c4;
                        }
                    }
                    c2 = c3;
                    globalEmojiSettings.edit().remove("emojis").apply();
                    saveRecentEmoji();
                } catch (Exception e) {
                    e = e;
                    FileLog.m898e(e);
                }
            } else {
                c2 = 1;
                String string2 = globalEmojiSettings.getString("emojis2", _UrlKt.FRAGMENT_ENCODE_SET);
                if (string2 != null && string2.length() > 0) {
                    for (String str : string2.split(",")) {
                        String[] strArrSplit3 = str.split("=");
                        emojiUseHistory.put(strArrSplit3[0], Utilities.parseInt((CharSequence) strArrSplit3[1]));
                    }
                }
            }
            if (emojiUseHistory.isEmpty() && !globalEmojiSettings.getBoolean("filled_default", false)) {
                int i3 = 0;
                while (true) {
                    String[] strArr = DEFAULT_RECENT;
                    if (i3 >= strArr.length) {
                        break;
                    }
                    emojiUseHistory.put(strArr[i3], Integer.valueOf(strArr.length - i3));
                    i3++;
                }
                globalEmojiSettings.edit().putBoolean("filled_default", c2).apply();
                saveRecentEmoji();
            }
            sortEmoji();
        } catch (Exception e2) {
            e = e2;
        }
        try {
            String string3 = globalEmojiSettings.getString("color", _UrlKt.FRAGMENT_ENCODE_SET);
            if (string3 == null || string3.length() <= 0) {
                return;
            }
            for (String str2 : string3.split(",")) {
                String[] strArrSplit4 = str2.split("=");
                emojiColor.put(strArrSplit4[0], strArrSplit4[1]);
            }
        } catch (Exception e3) {
            FileLog.m898e(e3);
        }
    }

    public static void saveEmojiColors() {
        SharedPreferences globalEmojiSettings = MessagesController.getGlobalEmojiSettings();
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : emojiColor.entrySet()) {
            if (sb.length() != 0) {
                sb.append(",");
            }
            sb.append(entry.getKey());
            sb.append("=");
            sb.append(entry.getValue());
        }
        globalEmojiSettings.edit().putString("color", sb.toString()).apply();
    }
}

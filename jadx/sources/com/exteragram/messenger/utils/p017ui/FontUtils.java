package com.exteragram.messenger.utils.p017ui;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.SystemFonts;
import android.os.Build;
import androidx.camera.core.ImageCapture$$ExternalSyntheticBackport1;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;

/* JADX INFO: loaded from: classes.dex */
public abstract class FontUtils {
    private static final int CANVAS_SIZE;
    private static final Paint PAINT;
    private static final String TEST_TEXT;
    private static volatile Boolean italicSupported;
    public static boolean loadSystemEmojiFailed;
    private static volatile Boolean mediumWeightSupported;
    private static Typeface systemEmojiTypeface;

    static {
        int iM1124dp = AndroidUtilities.m1124dp(20.0f);
        CANVAS_SIZE = iM1124dp;
        loadSystemEmojiFailed = false;
        mediumWeightSupported = null;
        italicSupported = null;
        Paint paint = new Paint();
        PAINT = paint;
        paint.setTextSize(iM1124dp);
        paint.setAntiAlias(false);
        paint.setSubpixelText(false);
        paint.setFakeBoldText(false);
        String language = "en";
        try {
            if (LocaleController.getInstance() != null && LocaleController.getInstance().getCurrentLocale() != null) {
                language = LocaleController.getInstance().getCurrentLocale().getLanguage();
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        if (ImageCapture$$ExternalSyntheticBackport1.m75m(new Object[]{"zh", "ja", "ko"}).contains(language)) {
            TEST_TEXT = "你好";
            return;
        }
        if (ImageCapture$$ExternalSyntheticBackport1.m75m(new Object[]{"ar", "fa"}).contains(language)) {
            TEST_TEXT = "مرحبا";
            return;
        }
        if ("iw".equals(language)) {
            TEST_TEXT = "שלום";
            return;
        }
        if ("th".equals(language)) {
            TEST_TEXT = "สวัสดี";
            return;
        }
        if ("hi".equals(language)) {
            TEST_TEXT = "नमस्ते";
        } else if (ImageCapture$$ExternalSyntheticBackport1.m75m(new Object[]{"ru", "uk", "ky", "be", "sr"}).contains(language)) {
            TEST_TEXT = "Привет";
        } else {
            TEST_TEXT = "R";
        }
    }

    public static boolean isMediumWeightSupported() {
        if (mediumWeightSupported == null) {
            synchronized (FontUtils.class) {
                try {
                    if (mediumWeightSupported == null) {
                        mediumWeightSupported = Boolean.valueOf(testTypeface(Typeface.create("sans-serif-medium", 0)));
                        FileLog.m1133d("mediumWeightSupported = " + mediumWeightSupported);
                    }
                } finally {
                }
            }
        }
        return mediumWeightSupported.booleanValue();
    }

    public static boolean isItalicSupported() {
        if (italicSupported == null) {
            synchronized (FontUtils.class) {
                try {
                    if (italicSupported == null) {
                        italicSupported = Boolean.valueOf(testTypeface(Typeface.create("sans-serif", 2)));
                        FileLog.m1133d("italicSupported = " + italicSupported);
                    }
                } finally {
                }
            }
        }
        return italicSupported.booleanValue();
    }

    private static boolean testTypeface(Typeface typeface) {
        Canvas canvas = new Canvas();
        int i = CANVAS_SIZE;
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i * 2, i, config);
        canvas.setBitmap(bitmapCreateBitmap);
        Paint paint = PAINT;
        paint.setTypeface(null);
        String str = TEST_TEXT;
        canvas.drawText(str, 0.0f, i, paint);
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i * 2, i, config);
        canvas.setBitmap(bitmapCreateBitmap2);
        paint.setTypeface(typeface);
        canvas.drawText(str, 0.0f, i, paint);
        boolean z = !bitmapCreateBitmap.sameAs(bitmapCreateBitmap2);
        AndroidUtilities.recycleBitmaps(ImageCapture$$ExternalSyntheticBackport1.m75m(new Object[]{bitmapCreateBitmap, bitmapCreateBitmap2}));
        return z;
    }

    public static File getSystemEmojiFontPath() {
        File fontFromSystemApi;
        if (Build.VERSION.SDK_INT >= 29 && (fontFromSystemApi = getFontFromSystemApi()) != null) {
            return fontFromSystemApi;
        }
        File fontFallback = getFontFallback();
        return fontFallback != null ? fontFallback : getFontFromFontsXml();
    }

    private static File getFontFromSystemApi() {
        try {
            Iterator<Font> it = SystemFonts.getAvailableFonts().iterator();
            File file = null;
            while (it.hasNext()) {
                File file2 = FontUtils$$ExternalSyntheticApiModelOutline2.m292m(it.next()).getFile();
                if (file2 != null) {
                    String lowerCase = file2.getName().toLowerCase();
                    if (lowerCase.contains("samsungcoloremoji")) {
                        return file2;
                    }
                    if (file == null && lowerCase.contains("emoji")) {
                        file = file2;
                    }
                }
            }
            return file;
        } catch (Exception e) {
            FileLog.m1136e(e);
            return null;
        }
    }

    private static File getFontFallback() {
        String[] strArr = {"/system/fonts/SamsungColorEmoji.ttf", "/system/fonts/NotoColorEmoji.ttf", "/system/fonts/AndroidEmoji.ttf"};
        for (int i = 0; i < 3; i++) {
            String str = strArr[i];
            File file = new File(str);
            if (file.exists()) {
                FileLog.m1133d("emoji font file fallback = " + str);
                return file;
            }
        }
        return null;
    }

    private static File getFontFromFontsXml() {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new FileReader("/system/etc/fonts.xml"));
        } catch (Exception e) {
            FileLog.m1136e(e);
            return null;
        }
        while (true) {
            boolean z = false;
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        bufferedReader.close();
                        return null;
                    }
                    String strTrim = line.trim();
                    if (strTrim.startsWith("<family") && strTrim.contains("ignore=\"true\"")) {
                        z = true;
                    } else {
                        if (strTrim.startsWith("</family>")) {
                            break;
                        }
                        if (strTrim.startsWith("<font") && !z) {
                            int iIndexOf = strTrim.indexOf(">");
                            int iIndexOf2 = strTrim.indexOf("<", 1);
                            if (iIndexOf > 0 && iIndexOf2 > 0) {
                                String strSubstring = strTrim.substring(iIndexOf + 1, iIndexOf2);
                                if (strSubstring.toLowerCase().contains("emoji")) {
                                    File file = new File("/system/fonts/" + strSubstring);
                                    if (file.exists()) {
                                        FileLog.m1133d("emoji font file fonts.xml = " + strSubstring);
                                        bufferedReader.close();
                                        return file;
                                    }
                                } else {
                                    continue;
                                }
                            }
                        }
                    }
                } finally {
                }
                FileLog.m1136e(e);
                return null;
            }
        }
    }

    public static Typeface getSystemEmojiTypeface() {
        if (!loadSystemEmojiFailed && systemEmojiTypeface == null) {
            File systemEmojiFontPath = getSystemEmojiFontPath();
            if (systemEmojiFontPath != null) {
                systemEmojiTypeface = Typeface.createFromFile(systemEmojiFontPath);
            }
            if (systemEmojiTypeface == null) {
                loadSystemEmojiFailed = true;
            }
        }
        return systemEmojiTypeface;
    }

    public static Typeface getFontFromAssets(String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            FontUtils$$ExternalSyntheticApiModelOutline1.m291m();
            Typeface.Builder builderM290m = FontUtils$$ExternalSyntheticApiModelOutline0.m290m(ApplicationLoader.applicationContext.getAssets(), str);
            if (str.contains("medium")) {
                builderM290m.setWeight(700);
            }
            if (str.contains("italic")) {
                builderM290m.setItalic(true);
            }
            return builderM290m.build();
        }
        return Typeface.createFromAsset(ApplicationLoader.applicationContext.getAssets(), str);
    }
}

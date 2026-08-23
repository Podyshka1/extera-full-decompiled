package org.telegram.ui.Components.Paint;

import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.SystemFonts;
import android.os.Build;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes7.dex */
public class PaintTypeface {
    public static final List BUILT_IN_FONTS;
    public static final PaintTypeface COURIER_NEW_BOLD;
    public static final PaintTypeface IMPACT;
    public static final PaintTypeface MW_BOLD;
    public static final PaintTypeface ROBOTO_CONDENSED;
    public static final PaintTypeface ROBOTO_ITALIC;
    public static final PaintTypeface ROBOTO_MEDIUM;
    public static final PaintTypeface ROBOTO_MONO;
    public static final PaintTypeface ROBOTO_SERIF;
    public static boolean loadingTypefaces;
    private static final List preferable;
    private static List typefaces;
    private final Font font;
    private final String key;
    private final LazyTypeface lazyTypeface;
    private final String name;
    private final String nameKey;
    private final Typeface typeface;

    static {
        PaintTypeface paintTypeface = new PaintTypeface("roboto", "PhotoEditorTypefaceRoboto", new LazyTypeface(new LazyTypeface.LazyTypefaceLoader() { // from class: org.telegram.ui.Components.Paint.PaintTypeface$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.Paint.PaintTypeface.LazyTypeface.LazyTypefaceLoader
            public final Typeface load() {
                return AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM);
            }
        }));
        ROBOTO_MEDIUM = paintTypeface;
        PaintTypeface paintTypeface2 = new PaintTypeface("italic", "PhotoEditorTypefaceItalic", new LazyTypeface(new LazyTypeface.LazyTypefaceLoader() { // from class: org.telegram.ui.Components.Paint.PaintTypeface$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.Paint.PaintTypeface.LazyTypeface.LazyTypefaceLoader
            public final Typeface load() {
                return AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM_ITALIC);
            }
        }));
        ROBOTO_ITALIC = paintTypeface2;
        PaintTypeface paintTypeface3 = new PaintTypeface("serif", "PhotoEditorTypefaceSerif", new LazyTypeface(new LazyTypeface.LazyTypefaceLoader() { // from class: org.telegram.ui.Components.Paint.PaintTypeface$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.Paint.PaintTypeface.LazyTypeface.LazyTypefaceLoader
            public final Typeface load() {
                return Typeface.create("serif", 1);
            }
        }));
        ROBOTO_SERIF = paintTypeface3;
        PaintTypeface paintTypeface4 = new PaintTypeface("condensed", "PhotoEditorTypefaceCondensed", new LazyTypeface(new LazyTypeface.LazyTypefaceLoader() { // from class: org.telegram.ui.Components.Paint.PaintTypeface$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.Components.Paint.PaintTypeface.LazyTypeface.LazyTypefaceLoader
            public final Typeface load() {
                return AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_CONDENSED_BOLD);
            }
        }));
        ROBOTO_CONDENSED = paintTypeface4;
        PaintTypeface paintTypeface5 = new PaintTypeface("mono", "PhotoEditorTypefaceMono", new LazyTypeface(new LazyTypeface.LazyTypefaceLoader() { // from class: org.telegram.ui.Components.Paint.PaintTypeface$$ExternalSyntheticLambda4
            @Override // org.telegram.ui.Components.Paint.PaintTypeface.LazyTypeface.LazyTypefaceLoader
            public final Typeface load() {
                return AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO);
            }
        }));
        ROBOTO_MONO = paintTypeface5;
        PaintTypeface paintTypeface6 = new PaintTypeface("mw_bold", "PhotoEditorTypefaceMerriweather", new LazyTypeface(new LazyTypeface.LazyTypefaceLoader() { // from class: org.telegram.ui.Components.Paint.PaintTypeface$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.Components.Paint.PaintTypeface.LazyTypeface.LazyTypefaceLoader
            public final Typeface load() {
                return AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_MERRIWEATHER_BOLD);
            }
        }));
        MW_BOLD = paintTypeface6;
        PaintTypeface paintTypeface7 = new PaintTypeface("courier_new_bold", "PhotoEditorTypefaceCourierNew", new LazyTypeface(new LazyTypeface.LazyTypefaceLoader() { // from class: org.telegram.ui.Components.Paint.PaintTypeface$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.Components.Paint.PaintTypeface.LazyTypeface.LazyTypefaceLoader
            public final Typeface load() {
                return AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_COURIER_NEW_BOLD);
            }
        }));
        COURIER_NEW_BOLD = paintTypeface7;
        PaintTypeface paintTypeface8 = new PaintTypeface("impact", "PhotoEditorTypefaceImpact", new LazyTypeface(new LazyTypeface.LazyTypefaceLoader() { // from class: org.telegram.ui.Components.Paint.PaintTypeface$$ExternalSyntheticLambda7
            @Override // org.telegram.ui.Components.Paint.PaintTypeface.LazyTypeface.LazyTypefaceLoader
            public final Typeface load() {
                return AndroidUtilities.getTypeface("fonts/impact.ttf");
            }
        }));
        IMPACT = paintTypeface8;
        BUILT_IN_FONTS = Arrays.asList(paintTypeface, paintTypeface2, paintTypeface3, paintTypeface4, paintTypeface5, paintTypeface8, paintTypeface6, paintTypeface7);
        preferable = Arrays.asList("Google Sans", "Dancing Script", "Carrois Gothic SC", "Cutive Mono", "Droid Sans Mono", "Coming Soon");
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class LazyTypeface {
        private final LazyTypefaceLoader loader;
        private Typeface typeface;

        public interface LazyTypefaceLoader {
            Typeface load();
        }

        public LazyTypeface(LazyTypefaceLoader lazyTypefaceLoader) {
            this.loader = lazyTypefaceLoader;
        }

        public Typeface get() {
            if (this.typeface == null) {
                this.typeface = this.loader.load();
            }
            return this.typeface;
        }
    }

    PaintTypeface(String str, String str2, LazyTypeface lazyTypeface) {
        this.key = str;
        this.nameKey = str2;
        this.name = null;
        this.typeface = null;
        this.lazyTypeface = lazyTypeface;
        this.font = null;
    }

    PaintTypeface(final Font font, String str) {
        this.key = str;
        this.name = str;
        this.nameKey = null;
        this.typeface = null;
        this.lazyTypeface = new LazyTypeface(new LazyTypeface.LazyTypefaceLoader() { // from class: org.telegram.ui.Components.Paint.PaintTypeface$$ExternalSyntheticLambda10
            @Override // org.telegram.ui.Components.Paint.PaintTypeface.LazyTypeface.LazyTypefaceLoader
            public final Typeface load() {
                return Typeface.createFromFile(font.getFile());
            }
        });
        this.font = font;
    }

    public String getKey() {
        return this.key;
    }

    public Typeface getTypeface() {
        LazyTypeface lazyTypeface = this.lazyTypeface;
        if (lazyTypeface != null) {
            return lazyTypeface.get();
        }
        return this.typeface;
    }

    public String getName() {
        String str = this.name;
        return str != null ? str : LocaleController.getString(this.nameKey);
    }

    private static void load() {
        if (typefaces != null || loadingTypefaces) {
            return;
        }
        loadingTypefaces = true;
        Utilities.themeQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.Paint.PaintTypeface$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                PaintTypeface.$r8$lambda$seevENs6colX4H5zOKDY6YlIPrM();
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$seevENs6colX4H5zOKDY6YlIPrM() {
        FontData font;
        final ArrayList arrayList = new ArrayList(BUILT_IN_FONTS);
        if (Build.VERSION.SDK_INT >= 29) {
            HashMap map = new HashMap();
            for (Font font2 : SystemFonts.getAvailableFonts()) {
                if (!font2.getFile().getName().contains("Noto") && (font = parseFont(font2)) != null) {
                    Family family = (Family) map.get(font.family);
                    if (family == null) {
                        family = new Family();
                        String str = font.family;
                        family.family = str;
                        map.put(str, family);
                    }
                    family.fonts.add(font);
                }
            }
            Iterator it = preferable.iterator();
            while (it.hasNext()) {
                Family family2 = (Family) map.get((String) it.next());
                if (family2 != null) {
                    FontData bold = family2.getBold();
                    if (bold == null) {
                        bold = family2.getRegular();
                    }
                    if (bold != null) {
                        arrayList.add(new PaintTypeface(bold.font, bold.getName()));
                    }
                }
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Paint.PaintTypeface$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                PaintTypeface.$r8$lambda$wqLq0YnuGRPM_WxsLs3YpX9ELIk(arrayList);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$wqLq0YnuGRPM_WxsLs3YpX9ELIk(ArrayList arrayList) {
        typefaces = arrayList;
        loadingTypefaces = false;
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.customTypefacesLoaded, new Object[0]);
    }

    public static List get() {
        List list = typefaces;
        if (list != null) {
            return list;
        }
        load();
        return BUILT_IN_FONTS;
    }

    public static PaintTypeface find(String str) {
        if (str != null && !TextUtils.isEmpty(str)) {
            List list = get();
            for (int i = 0; i < list.size(); i++) {
                PaintTypeface paintTypeface = (PaintTypeface) list.get(i);
                if (paintTypeface != null && TextUtils.equals(str, paintTypeface.key)) {
                    return paintTypeface;
                }
            }
        }
        return null;
    }

    static class Family {
        String family;
        ArrayList fonts = new ArrayList();

        Family() {
        }

        public FontData getRegular() {
            FontData fontData;
            int i = 0;
            while (true) {
                if (i >= this.fonts.size()) {
                    fontData = null;
                    break;
                }
                if ("Regular".equalsIgnoreCase(((FontData) this.fonts.get(i)).subfamily)) {
                    fontData = (FontData) this.fonts.get(i);
                    break;
                }
                i++;
            }
            return (fontData != null || this.fonts.isEmpty()) ? fontData : (FontData) this.fonts.get(0);
        }

        public FontData getBold() {
            for (int i = 0; i < this.fonts.size(); i++) {
                if ("Bold".equalsIgnoreCase(((FontData) this.fonts.get(i)).subfamily)) {
                    return (FontData) this.fonts.get(i);
                }
            }
            return null;
        }
    }

    static class FontData {
        String family;
        Font font;
        String subfamily;

        FontData() {
        }

        public String getName() {
            if ("Regular".equals(this.subfamily) || TextUtils.isEmpty(this.subfamily)) {
                return this.family;
            }
            return this.family + " " + this.subfamily;
        }
    }

    private static class NameRecord {
        final int encodingID;
        final int languageID;
        final int nameID;
        final int nameLength;
        final int platformID;
        final int stringOffset;

        public NameRecord(RandomAccessFile randomAccessFile) {
            this.platformID = randomAccessFile.readUnsignedShort();
            this.encodingID = randomAccessFile.readUnsignedShort();
            this.languageID = randomAccessFile.readUnsignedShort();
            this.nameID = randomAccessFile.readUnsignedShort();
            this.nameLength = randomAccessFile.readUnsignedShort();
            this.stringOffset = randomAccessFile.readUnsignedShort();
        }

        public String read(RandomAccessFile randomAccessFile, int i) throws IOException {
            Charset charset;
            randomAccessFile.seek(i + this.stringOffset);
            byte[] bArr = new byte[this.nameLength];
            randomAccessFile.read(bArr);
            if (this.encodingID == 1) {
                charset = StandardCharsets.UTF_16BE;
            } else {
                charset = StandardCharsets.UTF_8;
            }
            return new String(bArr, charset);
        }
    }

    private static String parseString(RandomAccessFile randomAccessFile, int i, NameRecord nameRecord) {
        if (nameRecord == null) {
            return null;
        }
        return nameRecord.read(randomAccessFile, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static FontData parseFont(Font font) throws Throwable {
        File file;
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2 = null;
        if (font == null || (file = font.getFile()) == null) {
            return null;
        }
        try {
            randomAccessFile = new RandomAccessFile(file, "r");
            try {
                try {
                    int i = randomAccessFile.readInt();
                    if (i == 65536 || i == 1330926671) {
                        int unsignedShort = randomAccessFile.readUnsignedShort();
                        randomAccessFile.skipBytes(6);
                        for (int i2 = 0; i2 < unsignedShort; i2++) {
                            int i3 = randomAccessFile.readInt();
                            randomAccessFile.skipBytes(4);
                            int i4 = randomAccessFile.readInt();
                            randomAccessFile.readInt();
                            if (i3 == 1851878757) {
                                randomAccessFile.seek(i4 + 2);
                                int unsignedShort2 = randomAccessFile.readUnsignedShort();
                                int unsignedShort3 = randomAccessFile.readUnsignedShort();
                                HashMap map = new HashMap();
                                for (int i5 = 0; i5 < unsignedShort2; i5++) {
                                    NameRecord nameRecord = new NameRecord(randomAccessFile);
                                    map.put(Integer.valueOf(nameRecord.nameID), nameRecord);
                                }
                                FontData fontData = new FontData();
                                fontData.font = font;
                                int i6 = i4 + unsignedShort3;
                                fontData.family = parseString(randomAccessFile, i6, (NameRecord) map.get(1));
                                fontData.subfamily = parseString(randomAccessFile, i6, (NameRecord) map.get(2));
                                try {
                                    randomAccessFile.close();
                                } catch (Exception unused) {
                                }
                                return fontData;
                            }
                        }
                    } else {
                        try {
                            randomAccessFile.close();
                        } catch (Exception unused2) {
                        }
                        return null;
                    }
                } catch (Exception e) {
                    e = e;
                    FileLog.m955e(e);
                    if (randomAccessFile != null) {
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                randomAccessFile2 = randomAccessFile;
                if (randomAccessFile2 != null) {
                    try {
                        randomAccessFile2.close();
                    } catch (Exception unused3) {
                    }
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            randomAccessFile = null;
        } catch (Throwable th2) {
            th = th2;
            if (randomAccessFile2 != null) {
            }
            throw th;
        }
        try {
            randomAccessFile.close();
        } catch (Exception unused4) {
        }
        return null;
    }
}

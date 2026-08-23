package androidx.core.graphics.drawable;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.ContextCompat;
import androidx.core.util.ObjectsCompat;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.android.dx.DexMaker$$ExternalSyntheticBUOutline0;
import com.android.dx.dex.code.CstInsn$$ExternalSyntheticBUOutline0;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import okio.Buffer$$ExternalSyntheticBUOutline4;
import org.scilab.forge.jlatexmath.TeXSymbolParser;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {
    static final PorterDuff.Mode DEFAULT_TINT_MODE = PorterDuff.Mode.SRC_IN;
    public byte[] mData;
    public int mInt1;
    public int mInt2;
    Object mObj1;
    public Parcelable mParcelable;
    public String mString1;
    public ColorStateList mTintList;
    PorterDuff.Mode mTintMode;
    public String mTintModeStr;
    public int mType;

    public static IconCompat createWithResource(Context context, int i) {
        ObjectsCompat.requireNonNull(context);
        return createWithResource(context.getResources(), context.getPackageName(), i);
    }

    public static IconCompat createWithResource(Resources resources, String str, int i) {
        ObjectsCompat.requireNonNull(str);
        if (i == 0) {
            f$$ExternalSyntheticBUOutline1.m178m("Drawable resource ID must not be 0");
            return null;
        }
        IconCompat iconCompat = new IconCompat(2);
        iconCompat.mInt1 = i;
        if (resources != null) {
            try {
                iconCompat.mObj1 = resources.getResourceName(i);
            } catch (Resources.NotFoundException unused) {
                f$$ExternalSyntheticBUOutline1.m178m("Icon resource cannot be found");
                return null;
            }
        } else {
            iconCompat.mObj1 = str;
        }
        iconCompat.mString1 = str;
        return iconCompat;
    }

    public static IconCompat createWithBitmap(Bitmap bitmap) {
        ObjectsCompat.requireNonNull(bitmap);
        IconCompat iconCompat = new IconCompat(1);
        iconCompat.mObj1 = bitmap;
        return iconCompat;
    }

    public static IconCompat createWithAdaptiveBitmap(Bitmap bitmap) {
        ObjectsCompat.requireNonNull(bitmap);
        IconCompat iconCompat = new IconCompat(5);
        iconCompat.mObj1 = bitmap;
        return iconCompat;
    }

    public static IconCompat createWithContentUri(String str) {
        ObjectsCompat.requireNonNull(str);
        IconCompat iconCompat = new IconCompat(4);
        iconCompat.mObj1 = str;
        return iconCompat;
    }

    public static IconCompat createWithContentUri(Uri uri) {
        ObjectsCompat.requireNonNull(uri);
        return createWithContentUri(uri.toString());
    }

    public IconCompat() {
        this.mType = -1;
        this.mData = null;
        this.mParcelable = null;
        this.mInt1 = 0;
        this.mInt2 = 0;
        this.mTintList = null;
        this.mTintMode = DEFAULT_TINT_MODE;
        this.mTintModeStr = null;
    }

    public IconCompat(int i) {
        this.mData = null;
        this.mParcelable = null;
        this.mInt1 = 0;
        this.mInt2 = 0;
        this.mTintList = null;
        this.mTintMode = DEFAULT_TINT_MODE;
        this.mTintModeStr = null;
        this.mType = i;
    }

    public int getType() {
        int i = this.mType;
        return i == -1 ? Api23Impl.getType(this.mObj1) : i;
    }

    public String getResPackage() {
        int i = this.mType;
        if (i == -1) {
            return Api23Impl.getResPackage(this.mObj1);
        }
        if (i != 2) {
            DexMaker$$ExternalSyntheticBUOutline0.m186m("called getResPackage() on ", this);
            return null;
        }
        String str = this.mString1;
        if (str == null || TextUtils.isEmpty(str)) {
            return ((String) this.mObj1).split(":", -1)[0];
        }
        return this.mString1;
    }

    public int getResId() {
        int i = this.mType;
        if (i == -1) {
            return Api23Impl.getResId(this.mObj1);
        }
        if (i != 2) {
            DexMaker$$ExternalSyntheticBUOutline0.m186m("called getResId() on ", this);
            return 0;
        }
        return this.mInt1;
    }

    public Bitmap getBitmap() {
        int i = this.mType;
        if (i == -1) {
            Object obj = this.mObj1;
            if (obj instanceof Bitmap) {
                return (Bitmap) obj;
            }
            return null;
        }
        if (i == 1) {
            return (Bitmap) this.mObj1;
        }
        if (i == 5) {
            return createLegacyIconFromAdaptiveIcon((Bitmap) this.mObj1, true);
        }
        DexMaker$$ExternalSyntheticBUOutline0.m186m("called getBitmap() on ", this);
        return null;
    }

    public Uri getUri() {
        int i = this.mType;
        if (i == -1) {
            return Api23Impl.getUri(this.mObj1);
        }
        if (i != 4 && i != 6) {
            DexMaker$$ExternalSyntheticBUOutline0.m186m("called getUri() on ", this);
            return null;
        }
        return Uri.parse((String) this.mObj1);
    }

    @Deprecated
    public Icon toIcon() {
        return toIcon(null);
    }

    public Icon toIcon(Context context) {
        return Api23Impl.toIcon(this, context);
    }

    public void checkResource(Context context) {
        Object obj;
        if (this.mType != 2 || (obj = this.mObj1) == null) {
            return;
        }
        String str = (String) obj;
        if (str.contains(":")) {
            String str2 = str.split(":", -1)[1];
            String str3 = str2.split("/", -1)[0];
            String str4 = str2.split("/", -1)[1];
            String str5 = str.split(":", -1)[0];
            if ("0_resource_name_obfuscated".equals(str4)) {
                Log.i("IconCompat", "Found obfuscated resource, not trying to update resource id for it");
                return;
            }
            String resPackage = getResPackage();
            int identifier = getResources(context, resPackage).getIdentifier(str4, str3, str5);
            if (this.mInt1 != identifier) {
                Log.i("IconCompat", "Id has changed for " + resPackage + " " + str);
                this.mInt1 = identifier;
            }
        }
    }

    public InputStream getUriInputStream(Context context) {
        Uri uri = getUri();
        String scheme = uri.getScheme();
        if ("content".equals(scheme) || "file".equals(scheme)) {
            try {
                return context.getContentResolver().openInputStream(uri);
            } catch (Exception e) {
                Log.w("IconCompat", "Unable to load image from URI: " + uri, e);
                return null;
            }
        }
        try {
            return new FileInputStream(new File((String) this.mObj1));
        } catch (FileNotFoundException e2) {
            Log.w("IconCompat", "Unable to load image from path: " + uri, e2);
            return null;
        }
    }

    public static Resources getResources(Context context, String str) {
        if ("android".equals(str)) {
            return Resources.getSystem();
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 8192);
            if (applicationInfo != null) {
                return packageManager.getResourcesForApplication(applicationInfo);
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("IconCompat", String.format("Unable to find pkg=%s for icon", str), e);
            return null;
        }
    }

    public void addToShortcutIntent(Intent intent, Drawable drawable, Context context) {
        Bitmap bitmapCopy;
        Bitmap bitmapCreateBitmap;
        checkResource(context);
        int i = this.mType;
        if (i == 1) {
            bitmapCopy = (Bitmap) this.mObj1;
            if (drawable != null) {
                bitmapCopy = bitmapCopy.copy(bitmapCopy.getConfig(), true);
            }
        } else if (i == 2) {
            try {
                Context contextCreatePackageContext = context.createPackageContext(getResPackage(), 0);
                if (drawable == null) {
                    intent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(contextCreatePackageContext, this.mInt1));
                    return;
                }
                Drawable drawable2 = ContextCompat.getDrawable(contextCreatePackageContext, this.mInt1);
                if (drawable2.getIntrinsicWidth() <= 0 || drawable2.getIntrinsicHeight() <= 0) {
                    int launcherLargeIconSize = ((ActivityManager) contextCreatePackageContext.getSystemService("activity")).getLauncherLargeIconSize();
                    bitmapCreateBitmap = Bitmap.createBitmap(launcherLargeIconSize, launcherLargeIconSize, Bitmap.Config.ARGB_8888);
                } else {
                    bitmapCreateBitmap = Bitmap.createBitmap(drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                }
                drawable2.setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                drawable2.draw(new Canvas(bitmapCreateBitmap));
                bitmapCopy = bitmapCreateBitmap;
            } catch (PackageManager.NameNotFoundException e) {
                throw new IllegalArgumentException("Can't find package " + this.mObj1, e);
            }
        } else if (i == 5) {
            bitmapCopy = createLegacyIconFromAdaptiveIcon((Bitmap) this.mObj1, true);
        } else {
            f$$ExternalSyntheticBUOutline1.m178m("Icon type not supported for intent shortcuts");
            return;
        }
        if (drawable != null) {
            int width = bitmapCopy.getWidth();
            int height = bitmapCopy.getHeight();
            drawable.setBounds(width / 2, height / 2, width, height);
            drawable.draw(new Canvas(bitmapCopy));
        }
        intent.putExtra("android.intent.extra.shortcut.ICON", bitmapCopy);
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        switch (this.mType) {
            case -1:
                bundle.putParcelable("obj", (Parcelable) this.mObj1);
                break;
            case 0:
            default:
                f$$ExternalSyntheticBUOutline1.m178m("Invalid icon");
                return null;
            case 1:
            case 5:
                bundle.putParcelable("obj", (Bitmap) this.mObj1);
                break;
            case 2:
            case 4:
            case 6:
                bundle.putString("obj", (String) this.mObj1);
                break;
            case 3:
                bundle.putByteArray("obj", (byte[]) this.mObj1);
                break;
        }
        bundle.putInt(TeXSymbolParser.TYPE_ATTR, this.mType);
        bundle.putInt("int1", this.mInt1);
        bundle.putInt("int2", this.mInt2);
        bundle.putString("string1", this.mString1);
        ColorStateList colorStateList = this.mTintList;
        if (colorStateList != null) {
            bundle.putParcelable("tint_list", colorStateList);
        }
        PorterDuff.Mode mode = this.mTintMode;
        if (mode != DEFAULT_TINT_MODE) {
            bundle.putString("tint_mode", mode.name());
        }
        return bundle;
    }

    public String toString() {
        if (this.mType == -1) {
            return String.valueOf(this.mObj1);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        sb.append(typeToString(this.mType));
        switch (this.mType) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.mObj1).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.mObj1).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.mString1);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(getResId())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.mInt1);
                if (this.mInt2 != 0) {
                    sb.append(" off=");
                    sb.append(this.mInt2);
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.mObj1);
                break;
        }
        if (this.mTintList != null) {
            sb.append(" tint=");
            sb.append(this.mTintList);
        }
        if (this.mTintMode != DEFAULT_TINT_MODE) {
            sb.append(" mode=");
            sb.append(this.mTintMode);
        }
        sb.append(")");
        return sb.toString();
    }

    public void onPreParceling(boolean z) {
        this.mTintModeStr = this.mTintMode.name();
        switch (this.mType) {
            case -1:
                if (z) {
                    f$$ExternalSyntheticBUOutline1.m178m("Can't serialize Icon created with IconCompat#createFromIcon");
                } else {
                    this.mParcelable = (Parcelable) this.mObj1;
                }
                break;
            case 1:
            case 5:
                Object obj = this.mObj1;
                if (z) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    ((Bitmap) obj).compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                    this.mData = byteArrayOutputStream.toByteArray();
                } else {
                    this.mParcelable = (Parcelable) obj;
                }
                break;
            case 2:
                this.mData = ((String) this.mObj1).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                this.mData = (byte[]) this.mObj1;
                break;
            case 4:
            case 6:
                this.mData = this.mObj1.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
    }

    public void onPostParceling() {
        this.mTintMode = PorterDuff.Mode.valueOf(this.mTintModeStr);
        switch (this.mType) {
            case -1:
                Parcelable parcelable = this.mParcelable;
                if (parcelable != null) {
                    this.mObj1 = parcelable;
                } else {
                    f$$ExternalSyntheticBUOutline1.m178m("Invalid icon");
                }
                break;
            case 1:
            case 5:
                Parcelable parcelable2 = this.mParcelable;
                if (parcelable2 != null) {
                    this.mObj1 = parcelable2;
                } else {
                    byte[] bArr = this.mData;
                    this.mObj1 = bArr;
                    this.mType = 3;
                    this.mInt1 = 0;
                    this.mInt2 = bArr.length;
                }
                break;
            case 2:
            case 4:
            case 6:
                String str = new String(this.mData, Charset.forName("UTF-16"));
                this.mObj1 = str;
                if (this.mType == 2 && this.mString1 == null) {
                    this.mString1 = str.split(":", -1)[0];
                    break;
                }
                break;
            case 3:
                this.mObj1 = this.mData;
                break;
        }
    }

    private static String typeToString(int i) {
        switch (i) {
            case 1:
                return "BITMAP";
            case 2:
                return "RESOURCE";
            case 3:
                return "DATA";
            case 4:
                return "URI";
            case 5:
                return "BITMAP_MASKABLE";
            case 6:
                return "URI_MASKABLE";
            default:
                return "UNKNOWN";
        }
    }

    public static IconCompat createFromBundle(Bundle bundle) {
        int i = bundle.getInt(TeXSymbolParser.TYPE_ATTR);
        IconCompat iconCompat = new IconCompat(i);
        iconCompat.mInt1 = bundle.getInt("int1");
        iconCompat.mInt2 = bundle.getInt("int2");
        iconCompat.mString1 = bundle.getString("string1");
        if (bundle.containsKey("tint_list")) {
            iconCompat.mTintList = (ColorStateList) bundle.getParcelable("tint_list");
        }
        if (bundle.containsKey("tint_mode")) {
            iconCompat.mTintMode = PorterDuff.Mode.valueOf(bundle.getString("tint_mode"));
        }
        switch (i) {
            case -1:
            case 1:
            case 5:
                iconCompat.mObj1 = bundle.getParcelable("obj");
                return iconCompat;
            case 0:
            default:
                Log.w("IconCompat", "Unknown type " + i);
                return null;
            case 2:
            case 4:
            case 6:
                iconCompat.mObj1 = bundle.getString("obj");
                return iconCompat;
            case 3:
                iconCompat.mObj1 = bundle.getByteArray("obj");
                return iconCompat;
        }
    }

    public static Bitmap createLegacyIconFromAdaptiveIcon(Bitmap bitmap, boolean z) {
        int iMin = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMin, iMin, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(3);
        float f = iMin;
        float f2 = 0.5f * f;
        float f3 = 0.9166667f * f2;
        if (z) {
            float f4 = 0.010416667f * f;
            paint.setColor(0);
            paint.setShadowLayer(f4, 0.0f, f * 0.020833334f, 1023410176);
            canvas.drawCircle(f2, f2, f3, paint);
            paint.setShadowLayer(f4, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f2, f2, f3, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(-16777216);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - iMin)) / 2.0f, (-(bitmap.getHeight() - iMin)) / 2.0f);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f2, f2, f3, paint);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class Api28Impl {
        public static String getResPackage(Object obj) {
            return ((Icon) obj).getResPackage();
        }

        public static int getType(Object obj) {
            return ((Icon) obj).getType();
        }

        public static int getResId(Object obj) {
            return ((Icon) obj).getResId();
        }

        public static Uri getUri(Object obj) {
            return ((Icon) obj).getUri();
        }
    }

    public static class Api26Impl {
        public static Icon createWithAdaptiveBitmap(Bitmap bitmap) {
            return Icon.createWithAdaptiveBitmap(bitmap);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class Api30Impl {
        public static Icon createWithAdaptiveBitmapContentUri(Uri uri) {
            return Icon.createWithAdaptiveBitmapContentUri(uri);
        }
    }

    public static class Api23Impl {
        public static int getType(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return Api28Impl.getType(obj);
            }
            try {
                return ((Integer) obj.getClass().getMethod("getType", null).invoke(obj, null)).intValue();
            } catch (IllegalAccessException e) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e);
                return -1;
            } catch (NoSuchMethodException e2) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e2);
                return -1;
            } catch (InvocationTargetException e3) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e3);
                return -1;
            }
        }

        public static String getResPackage(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return Api28Impl.getResPackage(obj);
            }
            try {
                return (String) obj.getClass().getMethod("getResPackage", null).invoke(obj, null);
            } catch (IllegalAccessException e) {
                Log.e("IconCompat", "Unable to get icon package", e);
                return null;
            } catch (NoSuchMethodException e2) {
                Log.e("IconCompat", "Unable to get icon package", e2);
                return null;
            } catch (InvocationTargetException e3) {
                Log.e("IconCompat", "Unable to get icon package", e3);
                return null;
            }
        }

        public static int getResId(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return Api28Impl.getResId(obj);
            }
            try {
                return ((Integer) obj.getClass().getMethod("getResId", null).invoke(obj, null)).intValue();
            } catch (IllegalAccessException e) {
                Log.e("IconCompat", "Unable to get icon resource", e);
                return 0;
            } catch (NoSuchMethodException e2) {
                Log.e("IconCompat", "Unable to get icon resource", e2);
                return 0;
            } catch (InvocationTargetException e3) {
                Log.e("IconCompat", "Unable to get icon resource", e3);
                return 0;
            }
        }

        public static Uri getUri(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return Api28Impl.getUri(obj);
            }
            try {
                return (Uri) obj.getClass().getMethod("getUri", null).invoke(obj, null);
            } catch (IllegalAccessException e) {
                Log.e("IconCompat", "Unable to get icon uri", e);
                return null;
            } catch (NoSuchMethodException e2) {
                Log.e("IconCompat", "Unable to get icon uri", e2);
                return null;
            } catch (InvocationTargetException e3) {
                Log.e("IconCompat", "Unable to get icon uri", e3);
                return null;
            }
        }

        public static Icon toIcon(IconCompat iconCompat, Context context) {
            Icon iconCreateWithBitmap;
            switch (iconCompat.mType) {
                case -1:
                    return (Icon) iconCompat.mObj1;
                case 0:
                default:
                    f$$ExternalSyntheticBUOutline1.m178m("Unknown type");
                    return null;
                case 1:
                    iconCreateWithBitmap = Icon.createWithBitmap((Bitmap) iconCompat.mObj1);
                    break;
                case 2:
                    iconCreateWithBitmap = Icon.createWithResource(iconCompat.getResPackage(), iconCompat.mInt1);
                    break;
                case 3:
                    iconCreateWithBitmap = Icon.createWithData((byte[]) iconCompat.mObj1, iconCompat.mInt1, iconCompat.mInt2);
                    break;
                case 4:
                    iconCreateWithBitmap = Icon.createWithContentUri((String) iconCompat.mObj1);
                    break;
                case 5:
                    int i = Build.VERSION.SDK_INT;
                    Object obj = iconCompat.mObj1;
                    if (i >= 26) {
                        iconCreateWithBitmap = Api26Impl.createWithAdaptiveBitmap((Bitmap) obj);
                    } else {
                        iconCreateWithBitmap = Icon.createWithBitmap(IconCompat.createLegacyIconFromAdaptiveIcon((Bitmap) obj, false));
                    }
                    break;
                case 6:
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 >= 30) {
                        iconCreateWithBitmap = Api30Impl.createWithAdaptiveBitmapContentUri(iconCompat.getUri());
                    } else {
                        if (context == null) {
                            Buffer$$ExternalSyntheticBUOutline4.m837m("Context is required to resolve the file uri of the icon: ", iconCompat.getUri());
                            return null;
                        }
                        InputStream uriInputStream = iconCompat.getUriInputStream(context);
                        if (uriInputStream == null) {
                            CstInsn$$ExternalSyntheticBUOutline0.m188m("Cannot load adaptive icon from uri: ", iconCompat.getUri());
                            return null;
                        }
                        if (i2 >= 26) {
                            iconCreateWithBitmap = Api26Impl.createWithAdaptiveBitmap(BitmapFactory.decodeStream(uriInputStream));
                        } else {
                            iconCreateWithBitmap = Icon.createWithBitmap(IconCompat.createLegacyIconFromAdaptiveIcon(BitmapFactory.decodeStream(uriInputStream), false));
                        }
                    }
                    break;
            }
            ColorStateList colorStateList = iconCompat.mTintList;
            if (colorStateList != null) {
                iconCreateWithBitmap.setTintList(colorStateList);
            }
            PorterDuff.Mode mode = iconCompat.mTintMode;
            if (mode != IconCompat.DEFAULT_TINT_MODE) {
                iconCreateWithBitmap.setTintMode(mode);
            }
            return iconCreateWithBitmap;
        }
    }
}

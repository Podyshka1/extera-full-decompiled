package com.google.mlkit.genai.prompt;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\b\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u001a\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0096\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/google/mlkit/genai/prompt/ImagePart;", "Lcom/google/mlkit/genai/prompt/Part;", "Landroid/graphics/Bitmap;", "bitmap", "<init>", "(Landroid/graphics/Bitmap;)V", _UrlKt.FRAGMENT_ENCODE_SET, "blob", "([B)V", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "Companion", "java.com.google.android.libraries.mlkit.granules.genai.prompt_mlkit_genai_prompt"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImagePart extends Part {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy zzd = LazyKt.lazy(zze.zza);

    /* JADX INFO: renamed from: zza, reason: from toString */
    private final Bitmap bitmap;
    private final int zzb;
    private final int zzc;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0011"}, d2 = {"Lcom/google/mlkit/genai/prompt/ImagePart$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context$delegate", "Lkotlin/Lazy;", "bytesToBitmap", "Landroid/graphics/Bitmap;", "blob", _UrlKt.FRAGMENT_ENCODE_SET, "uriToBitmap", "uri", "Landroid/net/Uri;", "java.com.google.android.libraries.mlkit.granules.genai.prompt_mlkit_genai_prompt"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public ImagePart(Bitmap bitmap) {
        super(null);
        this.bitmap = bitmap;
        this.zzb = bitmap.getWidth();
        this.zzc = bitmap.getHeight();
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (Intrinsics.areEqual(ImagePart.class, other != null ? other.getClass() : null)) {
            return this.bitmap.sameAs(((ImagePart) other).bitmap);
        }
        return false;
    }

    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    public int hashCode() {
        Bitmap bitmap = this.bitmap;
        int width = ((((bitmap.getWidth() + 527) * 31) + bitmap.getHeight()) * 31) + bitmap.getByteCount();
        Bitmap.Config config = bitmap.getConfig();
        return (width * 31) + (config != null ? config.hashCode() : 0);
    }

    public String toString() {
        Bitmap bitmap = this.bitmap;
        StringBuilder sb = new StringBuilder(String.valueOf(bitmap).length() + 18);
        sb.append("ImagePart(bitmap=");
        sb.append(bitmap);
        sb.append(")");
        return sb.toString();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ImagePart(byte[] bArr) {
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        if (bitmapDecodeByteArray == null) {
            f$$ExternalSyntheticBUOutline1.m212m("Could not decode byte array to bitmap.");
            throw null;
        }
        this(bitmapDecodeByteArray);
    }
}

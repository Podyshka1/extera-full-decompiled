package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.cast.framework.C1331R;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes4.dex */
final class zzi {
    private final Rect zza = new Rect();
    private final int zzb;
    private final int zzc;
    private final int zzd;
    private final int zze;
    private final zzh zzf;

    public zzi(zzh zzhVar) {
        this.zzf = zzhVar;
        Resources resources = zzhVar.getResources();
        this.zzb = resources.getDimensionPixelSize(C1331R.dimen.cast_libraries_material_featurehighlight_inner_radius);
        this.zzc = resources.getDimensionPixelOffset(C1331R.dimen.cast_libraries_material_featurehighlight_inner_margin);
        this.zzd = resources.getDimensionPixelSize(C1331R.dimen.cast_libraries_material_featurehighlight_text_max_width);
        this.zze = resources.getDimensionPixelSize(C1331R.dimen.cast_libraries_material_featurehighlight_text_horizontal_offset);
    }

    private final int zzb(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = i4 - i;
        int i6 = i2 - i4;
        int i7 = i4 - (i3 / 2);
        int i8 = this.zze;
        int i9 = i5 <= i6 ? i7 + i8 : i7 - i8;
        int i10 = marginLayoutParams.leftMargin;
        if (i9 - i10 < i) {
            return i + i10;
        }
        int i11 = marginLayoutParams.rightMargin;
        return (i9 + i3) + i11 > i2 ? (i2 - i3) - i11 : i9;
    }

    private final void zzc(View view, int i, int i2) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(View.MeasureSpec.makeMeasureSpec(Math.min((i - marginLayoutParams.leftMargin) - marginLayoutParams.rightMargin, this.zzd), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE));
    }

    public final void zza(Rect rect, Rect rect2) {
        zzi zziVar;
        zzh zzhVar = this.zzf;
        View viewZzg = zzhVar.zzg();
        if (rect.isEmpty() || rect2.isEmpty()) {
            zziVar = this;
            viewZzg.layout(0, 0, 0, 0);
        } else {
            int iCenterY = rect.centerY();
            int iCenterX = rect.centerX();
            int iCenterY2 = rect2.centerY();
            int iHeight = rect.height();
            int i = this.zzb;
            int iMax = Math.max(i + i, iHeight) / 2;
            int i2 = iCenterY + iMax;
            int i3 = this.zzc;
            if (iCenterY < iCenterY2) {
                int i4 = i3 + i2;
                zzc(viewZzg, rect2.width(), rect2.bottom - i4);
                int iZzb = zzb(viewZzg, rect2.left, rect2.right, viewZzg.getMeasuredWidth(), iCenterX);
                viewZzg.layout(iZzb, i4, viewZzg.getMeasuredWidth() + iZzb, viewZzg.getMeasuredHeight() + i4);
                zziVar = this;
                viewZzg = viewZzg;
            } else {
                int i5 = (iCenterY - iMax) - i3;
                zzc(viewZzg, rect2.width(), i5 - rect2.top);
                zziVar = this;
                viewZzg = viewZzg;
                int iZzb2 = zziVar.zzb(viewZzg, rect2.left, rect2.right, viewZzg.getMeasuredWidth(), iCenterX);
                viewZzg.layout(iZzb2, i5 - viewZzg.getMeasuredHeight(), viewZzg.getMeasuredWidth() + iZzb2, i5);
            }
        }
        Rect rect3 = zziVar.zza;
        rect3.set(viewZzg.getLeft(), viewZzg.getTop(), viewZzg.getRight(), viewZzg.getBottom());
        zzhVar.zzh().zzc(rect, rect3);
        zzhVar.zzi().zza(rect);
    }
}

package com.google.android.recaptcha.internal;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzfr implements zzfu {
    private final zzbb zza;

    public zzfr(zzbb zzbbVar) {
        this.zza = zzbbVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006a  */
    @Override // com.google.android.recaptcha.internal.zzfu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zza(Object... objArr) {
        Object objValueOf;
        String str = (String) objArr[0];
        List listSlice = ArraysKt.slice(objArr, RangesKt.until(1, objArr.length));
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listSlice, 10));
        Iterator it = listSlice.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        Cursor cursorZzd = this.zza.zzd(str, (String[]) arrayList.toArray(new String[0]));
        if (cursorZzd == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        while (cursorZzd.moveToNext()) {
            ArrayList arrayList3 = new ArrayList();
            int columnCount = cursorZzd.getColumnCount();
            for (int i = 0; i < columnCount; i++) {
                int type = cursorZzd.getType(i);
                if (type == 0) {
                    objValueOf = null;
                } else if (type == 1) {
                    objValueOf = Integer.valueOf(cursorZzd.getInt(i));
                } else if (type == 2) {
                    objValueOf = Float.valueOf(cursorZzd.getFloat(i));
                } else if (type == 3) {
                    objValueOf = cursorZzd.getString(i);
                } else if (type == 4) {
                    objValueOf = cursorZzd.getBlob(i);
                }
                arrayList3.add(objValueOf);
            }
            arrayList2.add(arrayList3);
        }
        cursorZzd.close();
        return arrayList2;
    }
}

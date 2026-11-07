package com.google.android.recaptcha.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.android.gms.cast.HlsSegmentFormat;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public final class zzlm extends SQLiteOpenHelper implements zzln {
    public static final zzll zza = new zzll(null);
    private static final int zzb = zzll.zzc("18.9.2");
    private static final String zzc = zzll.zzd("18.9.2");
    private static zzlm zzd;

    public /* synthetic */ zzlm(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        super(context, zzc, (SQLiteDatabase.CursorFactory) null, zzb);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE ce (id INTEGER PRIMARY KEY,ts BIGINT NOT NULL,ss TEXT NOT NULL)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS ce");
        sQLiteDatabase.execSQL("CREATE TABLE ce (id INTEGER PRIMARY KEY,ts BIGINT NOT NULL,ss TEXT NOT NULL)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS ce");
        sQLiteDatabase.execSQL("CREATE TABLE ce (id INTEGER PRIMARY KEY,ts BIGINT NOT NULL,ss TEXT NOT NULL)");
    }

    @Override // com.google.android.recaptcha.internal.zzln
    public final long zza(zzlo zzloVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("ss", zzloVar.zza());
        contentValues.put(HlsSegmentFormat.TS, Long.valueOf(zzloVar.zzb()));
        return getWritableDatabase().insert("ce", null, contentValues);
    }

    @Override // com.google.android.recaptcha.internal.zzln
    public final int zzb() {
        Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT COUNT(*) FROM ce", null);
        int i = -1;
        try {
            if (cursorRawQuery.moveToNext()) {
                i = cursorRawQuery.getInt(0);
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            cursorRawQuery.close();
            throw th;
        }
        cursorRawQuery.close();
        return i;
    }

    @Override // com.google.android.recaptcha.internal.zzln
    public final List zzc() {
        Cursor cursorQuery = getReadableDatabase().query("ce", null, null, null, null, null, "ts ASC");
        List arrayList = new ArrayList();
        while (cursorQuery.moveToNext()) {
            try {
                try {
                    arrayList.add(new zzlo(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("ss")), cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow(HlsSegmentFormat.TS)), cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("id"))));
                } catch (Exception unused) {
                    arrayList = CollectionsKt.emptyList();
                }
            } finally {
                cursorQuery.close();
            }
        }
        return arrayList;
    }

    @Override // com.google.android.recaptcha.internal.zzln
    public final int zzd(List list) {
        if (list.isEmpty()) {
            return 0;
        }
        return getWritableDatabase().delete("ce", "id IN ".concat(String.valueOf(CollectionsKt.joinToString$default(list, ", ", "(", ")", 0, null, zzlk.zza, 24, null))), null);
    }
}

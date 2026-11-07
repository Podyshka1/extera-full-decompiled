package com.google.android.recaptcha.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.Collections;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzax extends SQLiteOpenHelper {
    public zzax(Context context) {
        super(context, (String) null, (SQLiteDatabase.CursorFactory) null, 1);
    }

    private static final String zza() {
        List mutableList = ArraysKt.toMutableList(zzaju.values());
        CollectionsKt.removeFirstOrNull(mutableList);
        CollectionsKt.removeLastOrNull(mutableList);
        Collections.shuffle(mutableList);
        String strJoinToString$default = CollectionsKt.joinToString$default(mutableList, ", ", null, null, 0, null, zzaw.zza, 30, null);
        StringBuilder sb = new StringBuilder(String.valueOf(strJoinToString$default).length() + 38);
        sb.append("CREATE TABLE IF NOT EXISTS tbl64158 (");
        sb.append(strJoinToString$default);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(zza());
        String strZza = zzau.zza(zzaju.MEC_ACTION);
        StringBuilder sb = new StringBuilder(strZza.length() + 52);
        sb.append("CREATE INDEX IF NOT EXISTS idx_action ON tbl64158(");
        sb.append(strZza);
        sb.append(");");
        sQLiteDatabase.execSQL(sb.toString());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}

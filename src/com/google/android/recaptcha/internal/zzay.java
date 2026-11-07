package com.google.android.recaptcha.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.view.MotionEvent;
import kotlin.Unit;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzay {
    private final int zza;
    private final long zzb;
    private final zzax zzc;
    private long zzd;

    public zzay(Context context, int i, long j, boolean z, float f) {
        this.zza = i;
        this.zzb = j;
        this.zzc = new zzax(context);
        zzd();
    }

    private final void zzd() {
        SQLiteDatabase writableDatabase = this.zzc.getWritableDatabase();
        zzaju zzajuVar = zzaju.MEC_ID;
        String strZza = zzau.zza(zzajuVar);
        String strZza2 = zzau.zza(zzajuVar);
        String strZza3 = zzau.zza(zzajuVar);
        int i = this.zza;
        int iCoerceAtLeast = RangesKt.coerceAtLeast(1, (int) (i * 0.2f));
        int length = String.valueOf(i).length();
        int length2 = strZza.length();
        StringBuilder sb = new StringBuilder(length + 165 + length2 + 25 + strZza2.length() + 24 + strZza3.length() + 7 + String.valueOf(iCoerceAtLeast).length() + 31);
        sb.append("\n        CREATE TRIGGER tgr48932\n        AFTER INSERT ON tbl64158\n        WHEN (SELECT COUNT(*) FROM tbl64158) > ");
        sb.append(i);
        sb.append("\n        BEGIN\n          DELETE FROM tbl64158 WHERE ");
        sb.append(strZza);
        sb.append(" IN (\n            SELECT ");
        sb.append(strZza2);
        sb.append(" FROM tbl64158 ORDER BY ");
        sb.append(strZza3);
        sb.append(" LIMIT ");
        sb.append(iCoerceAtLeast);
        sb.append("\n          );\n        END;\n    ");
        String strTrimIndent = StringsKt.trimIndent(sb.toString());
        writableDatabase.beginTransaction();
        try {
            writableDatabase.execSQL("DROP TRIGGER IF EXISTS tgr48932");
            writableDatabase.execSQL(strTrimIndent);
            Unit unit = Unit.INSTANCE;
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public final void zza(String str, MotionEvent motionEvent) {
        long eventTime = motionEvent.getEventTime();
        if (eventTime - this.zzd < this.zzb) {
            return;
        }
        SQLiteDatabase writableDatabase = this.zzc.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(zzau.zza(zzaju.MEC_ACTIVITY_NAME), str.getBytes(Charsets.UTF_8));
        contentValues.put(zzau.zza(zzaju.MEC_DOWN_TIME), Long.valueOf(motionEvent.getDownTime()));
        contentValues.put(zzau.zza(zzaju.MEC_EVENT_TIME), Long.valueOf(motionEvent.getEventTime()));
        contentValues.put(zzau.zza(zzaju.MEC_ACTION), Integer.valueOf(motionEvent.getAction()));
        contentValues.put(zzau.zza(zzaju.MEC_POINTER_COUNT), Integer.valueOf(motionEvent.getPointerCount()));
        contentValues.put(zzau.zza(zzaju.MEC_META_STATE), Integer.valueOf(motionEvent.getMetaState()));
        contentValues.put(zzau.zza(zzaju.MEC_BUTTON_STATE), Integer.valueOf(motionEvent.getButtonState()));
        contentValues.put(zzau.zza(zzaju.MEC_X), Float.valueOf(motionEvent.getRawX()));
        contentValues.put(zzau.zza(zzaju.MEC_Y), Float.valueOf(motionEvent.getRawY()));
        contentValues.put(zzau.zza(zzaju.MEC_DEVICE_ID), Integer.valueOf(motionEvent.getDeviceId()));
        contentValues.put(zzau.zza(zzaju.MEC_TOOL_TYPE), Integer.valueOf(motionEvent.getToolType(motionEvent.getActionIndex())));
        contentValues.put(zzau.zza(zzaju.MEC_EDGE_FLAGS), Integer.valueOf(motionEvent.getEdgeFlags()));
        contentValues.put(zzau.zza(zzaju.MEC_SOURCE), Integer.valueOf(motionEvent.getSource()));
        contentValues.put(zzau.zza(zzaju.MEC_PRESSURE), Float.valueOf(motionEvent.getPressure()));
        contentValues.put(zzau.zza(zzaju.MEC_SIZE), Float.valueOf(motionEvent.getSize()));
        contentValues.put(zzau.zza(zzaju.MEC_FLAGS), Integer.valueOf(motionEvent.getFlags()));
        writableDatabase.insert("tbl64158", null, contentValues);
        this.zzd = eventTime;
    }

    public final void zzb() {
        this.zzc.getWritableDatabase().delete("tbl64158", null, null);
    }

    public final Cursor zzc(String str, String[] strArr) {
        return this.zzc.getReadableDatabase().rawQuery(str, strArr);
    }
}

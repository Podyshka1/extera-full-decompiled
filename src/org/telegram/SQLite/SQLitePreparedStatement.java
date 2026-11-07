package org.telegram.SQLite;

import android.os.SystemClock;
import java.nio.ByteBuffer;
import okio.Segment$$ExternalSyntheticBUOutline0;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.FileLog;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes.dex */
public class SQLitePreparedStatement {
    private boolean isFinalized = false;
    private String query;
    private long sqliteStatementHandle;
    private long startTime;

    public native void bindByteBuffer(long j, int i, ByteBuffer byteBuffer, int i2);

    public native void bindDouble(long j, int i, double d);

    public native void bindInt(long j, int i, int i2);

    public native void bindLong(long j, int i, long j2);

    public native void bindNull(long j, int i);

    public native void bindString(long j, int i, String str);

    public native void finalize(long j);

    public native long prepare(long j, String str);

    public native void reset(long j);

    public native int step(long j);

    public long getStatementHandle() {
        return this.sqliteStatementHandle;
    }

    public SQLitePreparedStatement(SQLiteDatabase sQLiteDatabase, String str) {
        this.sqliteStatementHandle = prepare(sQLiteDatabase.getSQLiteHandle(), str);
        if (BuildVars.LOGS_ENABLED) {
            this.query = str;
            this.startTime = SystemClock.elapsedRealtime();
        }
    }

    public SQLiteCursor query(Object[] objArr) {
        SQLitePreparedStatement sQLitePreparedStatement;
        if (objArr == null) {
            Segment$$ExternalSyntheticBUOutline0.m972m();
            return null;
        }
        checkFinalized();
        reset(this.sqliteStatementHandle);
        int i = 0;
        int i2 = 1;
        while (i < objArr.length) {
            Object obj = objArr[i];
            if (obj == null) {
                this.bindNull(this.sqliteStatementHandle, i2);
            } else if (obj instanceof Integer) {
                this.bindInt(this.sqliteStatementHandle, i2, ((Integer) obj).intValue());
            } else {
                if (obj instanceof Double) {
                    sQLitePreparedStatement = this;
                    sQLitePreparedStatement.bindDouble(this.sqliteStatementHandle, i2, ((Double) obj).doubleValue());
                } else {
                    sQLitePreparedStatement = this;
                    if (obj instanceof String) {
                        sQLitePreparedStatement.bindString(sQLitePreparedStatement.sqliteStatementHandle, i2, (String) obj);
                    } else if (obj instanceof Long) {
                        sQLitePreparedStatement.bindLong(sQLitePreparedStatement.sqliteStatementHandle, i2, ((Long) obj).longValue());
                    } else {
                        Segment$$ExternalSyntheticBUOutline0.m972m();
                        return null;
                    }
                }
                i2++;
                i++;
                this = sQLitePreparedStatement;
            }
            sQLitePreparedStatement = this;
            i2++;
            i++;
            this = sQLitePreparedStatement;
        }
        return new SQLiteCursor(this);
    }

    public int step() {
        return step(this.sqliteStatementHandle);
    }

    public SQLitePreparedStatement stepThis() {
        step(this.sqliteStatementHandle);
        return this;
    }

    public void requery() {
        checkFinalized();
        reset(this.sqliteStatementHandle);
    }

    public void dispose() {
        finalizeQuery();
    }

    public void checkFinalized() throws SQLiteException {
        if (this.isFinalized) {
            throw new SQLiteException("Prepared query finalized");
        }
    }

    public void finalizeQuery() {
        if (this.isFinalized) {
            return;
        }
        if (BuildVars.LOGS_ENABLED) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.startTime;
            if (jElapsedRealtime > 500) {
                FileLog.m1037d("sqlite query " + this.query + " took " + jElapsedRealtime + "ms");
            }
        }
        try {
            this.isFinalized = true;
            finalize(this.sqliteStatementHandle);
        } catch (SQLiteException e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1039e(e.getMessage(), e);
            }
        }
    }

    public void bindInteger(int i, int i2) {
        bindInt(this.sqliteStatementHandle, i, i2);
    }

    public void bindDouble(int i, double d) {
        bindDouble(this.sqliteStatementHandle, i, d);
    }

    public void bindByteBuffer(int i, ByteBuffer byteBuffer) {
        bindByteBuffer(this.sqliteStatementHandle, i, byteBuffer, byteBuffer.limit());
    }

    public void bindByteBuffer(int i, NativeByteBuffer nativeByteBuffer) {
        bindByteBuffer(this.sqliteStatementHandle, i, nativeByteBuffer.buffer, nativeByteBuffer.limit());
    }

    public void bindTlObject(int i, TLObject tLObject) {
        NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLObject.getObjectSize());
        try {
            tLObject.serializeToStream(nativeByteBuffer);
            bindByteBuffer(i, nativeByteBuffer);
        } finally {
            nativeByteBuffer.reuse();
        }
    }

    public void bindString(int i, String str) {
        bindString(this.sqliteStatementHandle, i, str);
    }

    public void bindLong(int i, long j) {
        bindLong(this.sqliteStatementHandle, i, j);
    }

    public void bindNull(int i) {
        bindNull(this.sqliteStatementHandle, i);
    }
}

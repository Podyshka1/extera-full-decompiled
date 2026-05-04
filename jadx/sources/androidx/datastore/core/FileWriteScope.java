package androidx.datastore.core;

import java.io.File;
import java.io.FileOutputStream;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.CloseableKt;

/* JADX INFO: loaded from: classes.dex */
public final class FileWriteScope extends FileReadScope implements WriteScope {

    /* JADX INFO: renamed from: androidx.datastore.core.FileWriteScope$writeData$1 */
    static final class C05201 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C05201(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FileWriteScope.this.writeData(null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileWriteScope(File file, Serializer serializer) {
        super(file, serializer);
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // androidx.datastore.core.WriteScope
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object writeData(Object obj, Continuation continuation) {
        C05201 c05201;
        java.io.Closeable closeable;
        FileOutputStream fileOutputStream;
        if (continuation instanceof C05201) {
            c05201 = (C05201) continuation;
            int i = c05201.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05201.label = i - Integer.MIN_VALUE;
            } else {
                c05201 = new C05201(continuation);
            }
        }
        Object obj2 = c05201.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c05201.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj2);
            checkNotClosed();
            FileOutputStream fileOutputStream2 = new FileOutputStream(getFile());
            try {
                Serializer serializer = getSerializer();
                UncloseableOutputStream uncloseableOutputStream = new UncloseableOutputStream(fileOutputStream2);
                c05201.L$0 = fileOutputStream2;
                c05201.L$1 = fileOutputStream2;
                c05201.label = 1;
                if (serializer.writeTo(obj, uncloseableOutputStream, c05201) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                fileOutputStream = fileOutputStream2;
                closeable = fileOutputStream;
            } catch (Throwable th) {
                th = th;
                closeable = fileOutputStream2;
                throw th;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            fileOutputStream = (FileOutputStream) c05201.L$1;
            closeable = (java.io.Closeable) c05201.L$0;
            try {
                ResultKt.throwOnFailure(obj2);
            } catch (Throwable th2) {
                th = th2;
                try {
                    throw th;
                } catch (Throwable th3) {
                    CloseableKt.closeFinally(closeable, th);
                    throw th3;
                }
            }
        }
        fileOutputStream.getFD().sync();
        Unit unit = Unit.INSTANCE;
        CloseableKt.closeFinally(closeable, null);
        return Unit.INSTANCE;
    }
}

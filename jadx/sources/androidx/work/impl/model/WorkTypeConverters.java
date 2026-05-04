package androidx.work.impl.model;

import android.net.NetworkRequest;
import android.net.Uri;
import android.os.Build;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo$State;
import androidx.work.impl.utils.NetworkRequest28;
import androidx.work.impl.utils.NetworkRequestCompat;
import androidx.work.impl.utils.NetworkRequestCompatKt;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.CloseableKt;

/* JADX INFO: loaded from: classes.dex */
public final class WorkTypeConverters {
    public static final WorkTypeConverters INSTANCE = new WorkTypeConverters();

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;
        public static final /* synthetic */ int[] $EnumSwitchMapping$3;

        static {
            int[] iArr = new int[WorkInfo$State.values().length];
            try {
                iArr[WorkInfo$State.ENQUEUED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WorkInfo$State.RUNNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WorkInfo$State.SUCCEEDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WorkInfo$State.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WorkInfo$State.BLOCKED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[WorkInfo$State.CANCELLED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[BackoffPolicy.values().length];
            try {
                iArr2[BackoffPolicy.EXPONENTIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[BackoffPolicy.LINEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[NetworkType.values().length];
            try {
                iArr3[NetworkType.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr3[NetworkType.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr3[NetworkType.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr3[NetworkType.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr3[NetworkType.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError unused13) {
            }
            $EnumSwitchMapping$2 = iArr3;
            int[] iArr4 = new int[OutOfQuotaPolicy.values().length];
            try {
                iArr4[OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr4[OutOfQuotaPolicy.DROP_WORK_REQUEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused15) {
            }
            $EnumSwitchMapping$3 = iArr4;
        }
    }

    private WorkTypeConverters() {
    }

    public static final int stateToInt(WorkInfo$State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        switch (WhenMappings.$EnumSwitchMapping$0[state.ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public static final WorkInfo$State intToState(int i) {
        if (i == 0) {
            return WorkInfo$State.ENQUEUED;
        }
        if (i == 1) {
            return WorkInfo$State.RUNNING;
        }
        if (i == 2) {
            return WorkInfo$State.SUCCEEDED;
        }
        if (i == 3) {
            return WorkInfo$State.FAILED;
        }
        if (i == 4) {
            return WorkInfo$State.BLOCKED;
        }
        if (i == 5) {
            return WorkInfo$State.CANCELLED;
        }
        throw new IllegalArgumentException("Could not convert " + i + " to State");
    }

    public static final int backoffPolicyToInt(BackoffPolicy backoffPolicy) {
        Intrinsics.checkNotNullParameter(backoffPolicy, "backoffPolicy");
        int i = WhenMappings.$EnumSwitchMapping$1[backoffPolicy.ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final BackoffPolicy intToBackoffPolicy(int i) {
        if (i == 0) {
            return BackoffPolicy.EXPONENTIAL;
        }
        if (i == 1) {
            return BackoffPolicy.LINEAR;
        }
        throw new IllegalArgumentException("Could not convert " + i + " to BackoffPolicy");
    }

    public static final int networkTypeToInt(NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        int i = WhenMappings.$EnumSwitchMapping$2[networkType.ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 3) {
            return 2;
        }
        if (i == 4) {
            return 3;
        }
        if (i == 5) {
            return 4;
        }
        if (Build.VERSION.SDK_INT >= 30 && networkType == NetworkType.TEMPORARILY_UNMETERED) {
            return 5;
        }
        throw new IllegalArgumentException("Could not convert " + networkType + " to int");
    }

    public static final NetworkType intToNetworkType(int i) {
        if (i == 0) {
            return NetworkType.NOT_REQUIRED;
        }
        if (i == 1) {
            return NetworkType.CONNECTED;
        }
        if (i == 2) {
            return NetworkType.UNMETERED;
        }
        if (i == 3) {
            return NetworkType.NOT_ROAMING;
        }
        if (i == 4) {
            return NetworkType.METERED;
        }
        if (Build.VERSION.SDK_INT >= 30 && i == 5) {
            return NetworkType.TEMPORARILY_UNMETERED;
        }
        throw new IllegalArgumentException("Could not convert " + i + " to NetworkType");
    }

    public static final int outOfQuotaPolicyToInt(OutOfQuotaPolicy policy) {
        Intrinsics.checkNotNullParameter(policy, "policy");
        int i = WhenMappings.$EnumSwitchMapping$3[policy.ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final OutOfQuotaPolicy intToOutOfQuotaPolicy(int i) {
        if (i == 0) {
            return OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
        }
        if (i == 1) {
            return OutOfQuotaPolicy.DROP_WORK_REQUEST;
        }
        throw new IllegalArgumentException("Could not convert " + i + " to OutOfQuotaPolicy");
    }

    public static final byte[] setOfTriggersToByteArray(Set triggers) {
        Intrinsics.checkNotNullParameter(triggers, "triggers");
        if (triggers.isEmpty()) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream.writeInt(triggers.size());
                Iterator it = triggers.iterator();
                while (it.hasNext()) {
                    Constraints.ContentUriTrigger contentUriTrigger = (Constraints.ContentUriTrigger) it.next();
                    objectOutputStream.writeUTF(contentUriTrigger.getUri().toString());
                    objectOutputStream.writeBoolean(contentUriTrigger.isTriggeredForDescendants());
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(objectOutputStream, null);
                CloseableKt.closeFinally(byteArrayOutputStream, null);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                return byteArray;
            } finally {
            }
        } finally {
        }
    }

    public static final Set byteArrayToSetOfTriggers(byte[] bytes) {
        ObjectInputStream objectInputStream;
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (bytes.length == 0) {
            return linkedHashSet;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
        try {
            try {
                objectInputStream = new ObjectInputStream(byteArrayInputStream);
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            int i = objectInputStream.readInt();
            for (int i2 = 0; i2 < i; i2++) {
                Uri uri = Uri.parse(objectInputStream.readUTF());
                boolean z = objectInputStream.readBoolean();
                Intrinsics.checkNotNull(uri);
                linkedHashSet.add(new Constraints.ContentUriTrigger(uri, z));
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(objectInputStream, null);
            Unit unit2 = Unit.INSTANCE;
            CloseableKt.closeFinally(byteArrayInputStream, null);
            return linkedHashSet;
        } finally {
        }
    }

    public static final NetworkRequestCompat toNetworkRequest$work_runtime_release(byte[] bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (Build.VERSION.SDK_INT < 28 || bytes.length == 0) {
            return new NetworkRequestCompat(null);
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
            try {
                int i = objectInputStream.readInt();
                int[] iArr = new int[i];
                for (int i2 = 0; i2 < i; i2++) {
                    iArr[i2] = objectInputStream.readInt();
                }
                int i3 = objectInputStream.readInt();
                int[] iArr2 = new int[i3];
                for (int i4 = 0; i4 < i3; i4++) {
                    iArr2[i4] = objectInputStream.readInt();
                }
                NetworkRequestCompat networkRequestCompatCreateNetworkRequestCompat$work_runtime_release = NetworkRequest28.INSTANCE.createNetworkRequestCompat$work_runtime_release(iArr2, iArr);
                CloseableKt.closeFinally(objectInputStream, null);
                CloseableKt.closeFinally(byteArrayInputStream, null);
                return networkRequestCompatCreateNetworkRequestCompat$work_runtime_release;
            } finally {
            }
        } finally {
        }
    }

    public static final byte[] fromNetworkRequest$work_runtime_release(NetworkRequestCompat requestCompat) {
        Intrinsics.checkNotNullParameter(requestCompat, "requestCompat");
        if (Build.VERSION.SDK_INT < 28) {
            return new byte[0];
        }
        NetworkRequest networkRequest = requestCompat.getNetworkRequest();
        if (networkRequest == null) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                int[] transportTypesCompat = NetworkRequestCompatKt.getTransportTypesCompat(networkRequest);
                int[] capabilitiesCompat = NetworkRequestCompatKt.getCapabilitiesCompat(networkRequest);
                objectOutputStream.writeInt(transportTypesCompat.length);
                for (int i : transportTypesCompat) {
                    objectOutputStream.writeInt(i);
                }
                objectOutputStream.writeInt(capabilitiesCompat.length);
                for (int i2 : capabilitiesCompat) {
                    objectOutputStream.writeInt(i2);
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(objectOutputStream, null);
                CloseableKt.closeFinally(byteArrayOutputStream, null);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                return byteArray;
            } finally {
            }
        } finally {
        }
    }
}

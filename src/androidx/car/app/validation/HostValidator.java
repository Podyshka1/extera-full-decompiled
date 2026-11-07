package androidx.car.app.validation;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import android.os.Process;
import android.util.Log;
import android.util.Pair;
import androidx.car.app.HostInfo;
import com.sun.jna.Native$$ExternalSyntheticBUOutline0;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
public final class HostValidator {
    public static final HostValidator ALLOW_ALL_HOSTS_VALIDATOR = new HostValidator(null, new HashMap(), true);
    private final boolean mAllowAllHosts;
    private final Map<String, List<String>> mAllowedHosts;
    private final Map<String, Pair<Integer, Boolean>> mCallerChecked = new HashMap();
    private final PackageManager mPackageManager;

    public HostValidator(PackageManager packageManager, Map<String, List<String>> map, boolean z) {
        this.mPackageManager = packageManager;
        this.mAllowedHosts = map;
        this.mAllowAllHosts = z;
    }

    public boolean isValidHost(HostInfo hostInfo) {
        Objects.requireNonNull(hostInfo);
        if (Log.isLoggable("CarApp.Val", 3)) {
            Log.d("CarApp.Val", "Evaluating " + hostInfo);
        }
        if (this.mAllowAllHosts) {
            if (!Log.isLoggable("CarApp.Val", 3)) {
                return true;
            }
            Log.d("CarApp.Val", "Accepted - Validator disabled, all hosts allowed");
            return true;
        }
        Boolean boolCheckCache = checkCache(hostInfo);
        if (boolCheckCache != null) {
            return boolCheckCache.booleanValue();
        }
        boolean zValidateHost = validateHost(hostInfo);
        updateCache(hostInfo, zValidateHost);
        return zValidateHost;
    }

    private PackageInfo getPackageInfo(String str) {
        try {
            PackageManager packageManager = this.mPackageManager;
            if (packageManager == null) {
                Log.d("CarApp.Val", "PackageManager is null. Package info cannot be found for package " + str);
                return null;
            }
            if (Build.VERSION.SDK_INT >= 28) {
                return Api28Impl.getPackageInfo(packageManager, str);
            }
            return packageManager.getPackageInfo(str, 4160);
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("CarApp.Val", "Package " + str + " not found", e);
            return null;
        }
    }

    private boolean validateHost(HostInfo hostInfo) {
        String packageName = hostInfo.getPackageName();
        PackageInfo packageInfo = getPackageInfo(packageName);
        if (packageInfo == null) {
            Log.w("CarApp.Val", "Rejected - package name " + packageName + " not found");
            return false;
        }
        Signature[] signatures = getSignatures(packageInfo);
        if (signatures == null || signatures.length == 0) {
            Log.w("CarApp.Val", "Package " + packageName + " is not signed or it has more than one signature");
            return false;
        }
        int i = packageInfo.applicationInfo.uid;
        if (i != hostInfo.getUid()) {
            throw new IllegalStateException("Host " + hostInfo + " doesn't match caller's actual UID " + i);
        }
        boolean zHasPermissionGranted = hasPermissionGranted(packageInfo, "android.car.permission.TEMPLATE_RENDERER");
        boolean zIsAllowListed = isAllowListed(packageName, signatures);
        if (i == Process.myUid()) {
            if (Log.isLoggable("CarApp.Val", 3)) {
                Log.d("CarApp.Val", "Accepted - Local service call");
            }
            return true;
        }
        if (zIsAllowListed) {
            if (Log.isLoggable("CarApp.Val", 3)) {
                Log.d("CarApp.Val", "Accepted - Host in allow-list");
            }
            return true;
        }
        if (i == 1000) {
            if (Log.isLoggable("CarApp.Val", 3)) {
                Log.d("CarApp.Val", "Accepted - System binding");
            }
            return true;
        }
        if (!zHasPermissionGranted) {
            Log.e("CarApp.Val", String.format("Unrecognized host.\nIf this is a valid caller, please add the following to your CarAppService#createHostValidator() implementation:\nreturn new HostValidator.Builder(context)\n\t.addAllowedHost(\"%s\", \"%s\");\n\t.build()", packageName, getDigest(signatures[0])));
            return false;
        }
        if (Log.isLoggable("CarApp.Val", 3)) {
            Log.d("CarApp.Val", "Accepted - Host has android.car.permission.TEMPLATE_RENDERER");
        }
        return true;
    }

    private boolean isAllowListed(String str, Signature[] signatureArr) {
        List<String> list = this.mAllowedHosts.get(str);
        if (list == null) {
            return false;
        }
        for (Signature signature : signatureArr) {
            if (list.contains(getDigest(signature))) {
                return true;
            }
        }
        return false;
    }

    private Boolean checkCache(HostInfo hostInfo) {
        Pair<Integer, Boolean> pair = this.mCallerChecked.get(hostInfo.getPackageName());
        if (pair != null && ((Integer) pair.first).intValue() == hostInfo.getUid()) {
            return (Boolean) pair.second;
        }
        return null;
    }

    private void updateCache(HostInfo hostInfo, boolean z) {
        this.mCallerChecked.put(hostInfo.getPackageName(), Pair.create(Integer.valueOf(hostInfo.getUid()), Boolean.valueOf(z)));
    }

    private static MessageDigest getMessageDigest() {
        try {
            return MessageDigest.getInstance("SHA256");
        } catch (NoSuchAlgorithmException e) {
            Log.e("CarApp.Val", "Could not find SHA256 hash algorithm", e);
            return null;
        }
    }

    private Signature[] getSignatures(PackageInfo packageInfo) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.getSignatures(packageInfo);
        }
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null || signatureArr.length != 1) {
            return null;
        }
        return signatureArr;
    }

    private String getDigest(Signature signature) {
        byte[] byteArray = signature.toByteArray();
        MessageDigest messageDigest = getMessageDigest();
        if (messageDigest == null) {
            return null;
        }
        messageDigest.update(byteArray);
        byte[] bArrDigest = messageDigest.digest();
        StringBuilder sb = new StringBuilder((bArrDigest.length * 3) - 1);
        for (byte b2 : bArrDigest) {
            sb.append(String.format("%02x", Byte.valueOf(b2)));
        }
        return sb.toString();
    }

    private static boolean hasPermissionGranted(PackageInfo packageInfo, String str) {
        if (packageInfo.requestedPermissionsFlags != null && packageInfo.requestedPermissions != null) {
            int i = 0;
            while (true) {
                int[] iArr = packageInfo.requestedPermissionsFlags;
                if (i >= iArr.length) {
                    break;
                }
                if ((iArr[i] & 2) != 0) {
                    String[] strArr = packageInfo.requestedPermissions;
                    if (i < strArr.length && str.equals(strArr[i])) {
                        return true;
                    }
                }
                i++;
            }
        }
        return false;
    }

    public static final class Api28Impl {
        public static Signature[] getSignatures(PackageInfo packageInfo) {
            SigningInfo signingInfo = packageInfo.signingInfo;
            if (signingInfo == null) {
                return null;
            }
            return signingInfo.getSigningCertificateHistory();
        }

        public static PackageInfo getPackageInfo(PackageManager packageManager, String str) {
            return packageManager.getPackageInfo(str, 134221824);
        }
    }

    public static final class Builder {
        private final Map<String, List<String>> mAllowedHosts = new HashMap();
        private final Context mContext;

        public Builder(Context context) {
            this.mContext = context;
        }

        public Builder addAllowedHost(String str, String str2) {
            Objects.requireNonNull(str);
            Objects.requireNonNull(str2);
            List<String> arrayList = this.mAllowedHosts.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.mAllowedHosts.put(str, arrayList);
            }
            arrayList.add(str2);
            return this;
        }

        @SuppressLint({"MissingGetterMatchingBuilder"})
        public Builder addAllowedHosts(int i) {
            String[] stringArray = this.mContext.getResources().getStringArray(i);
            if (stringArray == null) {
                CharCodeKt$$ExternalSyntheticBUOutline0.m908m("Invalid allowlist res id: ", i);
                return null;
            }
            for (String str : stringArray) {
                String[] strArrSplit = str.split(",", -1);
                if (strArrSplit.length != 2) {
                    Native$$ExternalSyntheticBUOutline0.m512m("Invalid allowed host entry: '", str, "'");
                    return null;
                }
                addAllowedHost(cleanUp(strArrSplit[1]), cleanUp(strArrSplit[0]));
            }
            return this;
        }

        public HostValidator build() {
            return new HostValidator(this.mContext.getPackageManager(), this.mAllowedHosts, false);
        }

        private String cleanUp(String str) {
            return str.toLowerCase(Locale.US).replace(" ", _UrlKt.FRAGMENT_ENCODE_SET);
        }
    }
}

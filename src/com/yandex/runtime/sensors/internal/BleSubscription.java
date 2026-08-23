package com.yandex.runtime.sensors.internal;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanFilter;
import android.bluetooth.le.ScanResult;
import android.bluetooth.le.ScanSettings;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.Runtime;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class BleSubscription {
    private static final String PERMISSION_BLUETOOTH = "android.permission.BLUETOOTH";
    private static final String PERMISSION_BLUETOOTH_ADMIN = "android.permission.BLUETOOTH_ADMIN";
    private static final String PERMISSION_BLUETOOTH_SCAN = "android.permission.BLUETOOTH_SCAN";
    private static final int SCAN_RETRY_TIMEOUT = 1000;
    private static final String TAG = "com.yandex.runtime.sensors.internal.BleSubscription";
    private NativeObject nativeObject_;
    private ScanApi scanApi_;
    private Object scanCallback_;
    private BluetoothAdapter adapter_ = getBluetoothAdapter();
    private BroadcastReceiver receiver_ = getBluetoothStateReceiver();

    private static native void scanFailed(NativeObject nativeObject, String str);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void scanResultAvailable(NativeObject nativeObject, String str, int i, byte[] bArr);

    public enum ScanApi {
        NEW("NewScanApi"),
        OLD("OldScanApi");

        private final String scanApi;

        ScanApi(String str) {
            this.scanApi = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.scanApi;
        }
    }

    public BleSubscription(NativeObject nativeObject, ScanApi scanApi) {
        this.nativeObject_ = nativeObject;
        this.scanApi_ = scanApi;
        start();
    }

    private BroadcastReceiver getBluetoothStateReceiver() {
        return new BroadcastReceiver() { // from class: com.yandex.runtime.sensors.internal.BleSubscription.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (BleSubscription.this.adapter_ == null || !BleSubscription.this.adapter_.isEnabled()) {
                    BleSubscription.this.stopScan();
                } else {
                    BleSubscription.this.startScan();
                }
            }
        };
    }

    public void start() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.yandex.runtime.sensors.internal.BleSubscription.2
            @Override // java.lang.Runnable
            public void run() {
                Runtime.getApplicationContext().registerReceiver(BleSubscription.this.receiver_, new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED"));
                BluetoothAdapter bluetoothAdapter = BleSubscription.this.adapter_;
                BleSubscription bleSubscription = BleSubscription.this;
                if (bluetoothAdapter == null) {
                    bleSubscription.setScanFailed("No BLE adapter");
                } else if (!bleSubscription.adapter_.isEnabled()) {
                    Log.w(BleSubscription.TAG, "Not starting BLE scan yet. Waiting until bluetooth is switched on");
                } else {
                    BleSubscription.this.startScan();
                }
            }
        });
    }

    public void stop() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.yandex.runtime.sensors.internal.BleSubscription.3
            @Override // java.lang.Runnable
            public void run() {
                Runtime.getApplicationContext().unregisterReceiver(BleSubscription.this.receiver_);
                BleSubscription.this.stopScan();
            }
        });
    }

    public static boolean isBleScanAvailable() {
        return getBluetoothAdapter() != null && areBleScanPermissionsGranted();
    }

    private static BluetoothAdapter getBluetoothAdapter() {
        try {
            return BluetoothAdapter.getDefaultAdapter();
        } catch (SecurityException e) {
            Log.e(TAG, "SecurityException of calling getBluetoothAdapter", e);
            return null;
        }
    }

    private static boolean areBleScanPermissionsGranted() {
        if (Build.VERSION.SDK_INT > 30) {
            return PermissionHelper.checkPermissions(new String[]{PERMISSION_BLUETOOTH_SCAN});
        }
        return PermissionHelper.checkPermissions(new String[]{PERMISSION_BLUETOOTH, PERMISSION_BLUETOOTH_ADMIN});
    }

    private boolean useNewScanApi() {
        return this.scanApi_ == ScanApi.NEW;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startScan() {
        if (this.adapter_ == null) {
            Log.e(TAG, "BLE scan is not available");
            return;
        }
        if (this.scanCallback_ != null) {
            return;
        }
        boolean zUseNewScanApi = useNewScanApi();
        if (zUseNewScanApi) {
            this.scanCallback_ = new ScanCallback() { // from class: com.yandex.runtime.sensors.internal.BleSubscription.4
                @Override // android.bluetooth.le.ScanCallback
                public void onBatchScanResults(List<ScanResult> list) {
                    for (ScanResult scanResult : list) {
                        BleSubscription.scanResultAvailable(BleSubscription.this.nativeObject_, scanResult.getDevice().getAddress(), scanResult.getRssi(), scanResult.getScanRecord().getBytes());
                    }
                }

                @Override // android.bluetooth.le.ScanCallback
                public void onScanFailed(int i) {
                    if (i != 1) {
                        if (i == 2) {
                            BleSubscription.this.setScanFailed("SCAN_FAILED_APPLICATION_REGISTRATION_FAILED");
                            return;
                        } else if (i != 3) {
                            BleSubscription bleSubscription = BleSubscription.this;
                            if (i != 4) {
                                bleSubscription.setScanFailed("Unknown scan failed error");
                                return;
                            } else {
                                bleSubscription.setScanFailed("SCAN_FAILED_FEATURE_UNSUPPORTED");
                                return;
                            }
                        }
                    }
                    BleSubscription.this.retryScan();
                }

                @Override // android.bluetooth.le.ScanCallback
                public void onScanResult(int i, ScanResult scanResult) {
                    BleSubscription.scanResultAvailable(BleSubscription.this.nativeObject_, scanResult.getDevice().getAddress(), scanResult.getRssi(), scanResult.getScanRecord().getBytes());
                }
            };
        } else {
            this.scanCallback_ = new BluetoothAdapter.LeScanCallback() { // from class: com.yandex.runtime.sensors.internal.BleSubscription.5
                @Override // android.bluetooth.BluetoothAdapter.LeScanCallback
                public void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
                    BleSubscription.scanResultAvailable(BleSubscription.this.nativeObject_, bluetoothDevice.getAddress(), i, bArr);
                }
            };
        }
        Log.i(TAG, "Starting BLE scan for " + this.scanApi_.toString());
        BluetoothAdapter bluetoothAdapter = this.adapter_;
        try {
            if (zUseNewScanApi) {
                BluetoothLeScanner bluetoothLeScanner = bluetoothAdapter.getBluetoothLeScanner();
                if (bluetoothLeScanner != null) {
                    bluetoothLeScanner.startScan((List<ScanFilter>) null, makeNewApiScanSettings(), (ScanCallback) this.scanCallback_);
                    return;
                } else {
                    this.scanCallback_ = null;
                    return;
                }
            }
            if (bluetoothAdapter.startLeScan((BluetoothAdapter.LeScanCallback) this.scanCallback_)) {
                return;
            }
            this.scanCallback_ = null;
        } catch (SecurityException e) {
            Log.e(TAG, "SecurityException of calling startScan", e);
            if (e.getMessage() != null) {
                setScanFailed("Scan SecurityException: " + e.getMessage());
                return;
            }
            setScanFailed("Scan SecurityException");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopScan() {
        BluetoothAdapter bluetoothAdapter = this.adapter_;
        if (bluetoothAdapter == null) {
            Log.e(TAG, "BLE scan is not available");
            return;
        }
        if (this.scanCallback_ == null || bluetoothAdapter.getState() != 12) {
            return;
        }
        Log.i(TAG, "Stopping BLE scan");
        boolean zUseNewScanApi = useNewScanApi();
        BluetoothAdapter bluetoothAdapter2 = this.adapter_;
        if (zUseNewScanApi) {
            BluetoothLeScanner bluetoothLeScanner = bluetoothAdapter2.getBluetoothLeScanner();
            if (bluetoothLeScanner != null) {
                bluetoothLeScanner.stopScan((ScanCallback) this.scanCallback_);
            }
        } else {
            bluetoothAdapter2.stopLeScan((BluetoothAdapter.LeScanCallback) this.scanCallback_);
        }
        this.scanCallback_ = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retryScan() {
        this.scanCallback_ = null;
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.yandex.runtime.sensors.internal.BleSubscription.6
            @Override // java.lang.Runnable
            public void run() {
                if (!BleSubscription.this.adapter_.isEnabled()) {
                    Log.w(BleSubscription.TAG, "Not starting BLE scan yet. Waiting until bluetooth is switched on");
                } else {
                    BleSubscription.this.stopScan();
                    BleSubscription.this.startScan();
                }
            }
        }, 1000L);
    }

    private ScanSettings makeNewApiScanSettings() {
        return new ScanSettings.Builder().setScanMode(2).setCallbackType(1).setMatchMode(1).setNumOfMatches(1).setReportDelay(0L).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScanFailed(String str) {
        this.adapter_ = null;
        this.scanCallback_ = null;
        scanFailed(this.nativeObject_, str);
    }
}

package com.exteragram.messenger.plugins;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.FileProvider;
import com.chaquo.python.PyException;
import com.chaquo.python.PyObject;
import com.chaquo.python.Python;
import com.chaquo.python.android.AndroidPlatform;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.adblock.AdBlockClient$$ExternalSyntheticBackport0;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.PythonPluginsEngine;
import com.exteragram.messenger.plugins.hooks.PluginsHooks;
import com.exteragram.messenger.plugins.models.CustomSetting;
import com.exteragram.messenger.plugins.models.DividerSetting;
import com.exteragram.messenger.plugins.models.EditTextSetting;
import com.exteragram.messenger.plugins.models.HeaderSetting;
import com.exteragram.messenger.plugins.models.InputSetting;
import com.exteragram.messenger.plugins.models.SelectorSetting;
import com.exteragram.messenger.plugins.models.SettingItem;
import com.exteragram.messenger.plugins.models.SwitchSetting;
import com.exteragram.messenger.plugins.models.TextSetting;
import com.exteragram.messenger.plugins.p015ui.PluginSettingsActivity;
import com.exteragram.messenger.plugins.p015ui.components.InstallPluginBottomSheet;
import com.exteragram.messenger.plugins.pip.PipController;
import com.exteragram.messenger.plugins.utils.PyObjectUtils;
import com.exteragram.messenger.preferences.utils.SettingsRegistry;
import com.exteragram.messenger.updater.UpdateAppAlertDialog;
import com.exteragram.messenger.utils.AppUtils;
import com.exteragram.messenger.utils.network.RemoteUtils;
import com.exteragram.messenger.utils.text.LocaleUtils;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.CheckBox2;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import p022j$.util.Collection;
import p022j$.util.DesugarArrays;
import p022j$.util.Map;
import p022j$.util.Objects;
import p022j$.util.concurrent.ConcurrentHashMap;
import p022j$.util.concurrent.ConcurrentMap$EL;
import p022j$.util.function.Function$CC;
import p022j$.util.function.Predicate$CC;
import p022j$.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
public class PythonPluginsEngine implements PluginsController.PluginsEngine {
    private static File SDK_DIR;
    public PyObject basePluginClass;
    public PyObject debuggerListener;
    private PyObject devServerClass;
    private volatile Python python;
    private static final Pattern VERSION_PATTERN = Pattern.compile(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986161156610946267L));
    public static String SDK_VERSION = Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986161246805259483L);
    public static boolean SDK_BETA = false;
    public final ConcurrentHashMap<String, PyObject> pluginInstances = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, ConcurrentHashMap<String, Object>> settingsCache = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    @FunctionalInterface
    interface PyMethodCaller<T> {
        PyObject call(PyObject pyObject, T t);
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public boolean canOpenInExternalApp() {
        return true;
    }

    private PluginsController getPluginsController() {
        return PluginsController.getInstance();
    }

    private synchronized Python getPython() {
        if (this.python == null) {
            initPython();
            if (this.python == null) {
                FileLog.m1134e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986143504295359707L));
                return null;
            }
        }
        return this.python;
    }

    private void initPython() {
        try {
            if (!Python.isStarted()) {
                Python.start(new AndroidPlatform(ApplicationLoader.applicationContext));
            }
            this.python = Python.getInstance();
        } catch (Exception e) {
            FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986143714748757211L), e);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public boolean isPlugin(File file, MessageObject messageObject) {
        return file != null && file.getName().toLowerCase().endsWith(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986143835007841499L));
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public boolean isEngineAvailable() {
        return getPython() != null && Python.isStarted();
    }

    private static void deleteRecursive(File file, boolean z) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                deleteRecursive(file2, true);
            }
        }
        if (z) {
            file.delete();
        }
    }

    private void initSdk() {
        if (this.python == null) {
            return;
        }
        if (SDK_DIR == null) {
            File file = new File(new File(ApplicationLoader.getFilesDirFixed(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986143869367579867L)), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986143908022285531L));
            SDK_DIR = file;
            if (!file.exists()) {
                SDK_DIR.mkdirs();
            }
        }
        File pythonSdkUpdateFile = Updater.getPythonSdkUpdateFile();
        File pythonCurrentSdkFile = Updater.getPythonCurrentSdkFile();
        if (pythonSdkUpdateFile.exists() && !Updater.requestSdkFromApkFile().exists()) {
            deleteRecursive(SDK_DIR, false);
            if (pythonCurrentSdkFile.exists()) {
                pythonCurrentSdkFile.delete();
            }
            try {
                AndroidUtilities.copyFile(pythonSdkUpdateFile, pythonCurrentSdkFile);
                try {
                    FileInputStream fileInputStream = new FileInputStream(pythonCurrentSdkFile);
                    try {
                        PipController.unzip(fileInputStream, SDK_DIR);
                        fileInputStream.close();
                    } catch (Throwable th) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (IOException unused) {
                } catch (Throwable th3) {
                    Updater.setBuildFromApk(false);
                    throw th3;
                }
                Updater.setBuildFromApk(false);
            } catch (IOException unused2) {
            }
        } else {
            if (Updater.requestSdkFromApkFile().exists()) {
                deleteRecursive(SDK_DIR, false);
                Updater.requestSdkFromApkFile().delete();
            }
            File[] fileArrListFiles = SDK_DIR.listFiles();
            if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                try {
                    InputStream inputStreamSdkFromApk = Updater.sdkFromApk();
                    try {
                        PipController.unzip(inputStreamSdkFromApk, SDK_DIR);
                        Updater.setBuildFromApk(true);
                        if (inputStreamSdkFromApk != null) {
                            inputStreamSdkFromApk.close();
                        }
                        try {
                            inputStreamSdkFromApk = Updater.sdkFromApk();
                            try {
                                if (pythonCurrentSdkFile.exists()) {
                                    pythonCurrentSdkFile.delete();
                                }
                                AndroidUtilities.copyFile(inputStreamSdkFromApk, pythonCurrentSdkFile);
                                if (inputStreamSdkFromApk != null) {
                                    inputStreamSdkFromApk.close();
                                }
                            } finally {
                            }
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        }
                    } finally {
                        if (inputStreamSdkFromApk != null) {
                            try {
                                inputStreamSdkFromApk.close();
                            } catch (Throwable th4) {
                                th.addSuppressed(th4);
                            }
                        }
                    }
                } catch (IOException e2) {
                    throw new RuntimeException(e2);
                }
            }
        }
        Updater.deleteSdkUpdateFile();
        PyObject pyObject = this.python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986143959561893083L)).get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986143976741762267L));
        Objects.requireNonNull(pyObject);
        pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986143998216598747L), SDK_DIR.getAbsolutePath());
        this.python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144028281369819L)).callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144084115944667L), new Object[0]);
        if (this.basePluginClass == null) {
            try {
                this.basePluginClass = this.python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144127065617627L)).get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144178605225179L));
            } catch (PyException e3) {
                FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144225849865435L), e3);
            }
        }
    }

    private void stopAndUnloadSdk() {
        if (this.python == null) {
            return;
        }
        this.python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144363288818907L)).callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144419123393755L), new Object[0]);
        PyObject module = this.python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144457778099419L));
        PyObject pyObject = module.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144474957968603L));
        if (pyObject != null && pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144496432805083L), SDK_DIR.getAbsolutePath()).toBoolean()) {
            pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144552267379931L), SDK_DIR.getAbsolutePath());
        }
        PyObject pyObject2 = module.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144582332151003L));
        if (pyObject2 != null) {
            removeModulesRecursive(pyObject2, SDK_DIR, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144616691889371L));
        }
    }

    private void removeModulesRecursive(PyObject pyObject, File file, String str) {
        if (Objects.equals(str, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144620986856667L))) {
            str = Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144676821431515L);
        }
        if (file.isDirectory()) {
            if (pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144681116398811L), str + file.getName()).toBoolean()) {
                pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144736950973659L), str + file.getName());
            }
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                removeModulesRecursive(pyObject, file2, file.getName() + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144754130842843L));
            }
        }
        if (file.isDirectory()) {
            return;
        }
        if (pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144762720777435L), str + file.getName().split(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144818555352283L))[0]).toBoolean()) {
            pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144831440254171L), str + file.getName().split(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144848620123355L))[0]);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void init(Runnable runnable) {
        if (getPython() == null) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        initSdk();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                PythonPluginsEngine.Updater.checkUpdates();
            }
        }, 5000L);
        PyObject module = this.python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144861505025243L));
        PyObject pyObject = module.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144917339600091L));
        SDK_VERSION = pyObject != null ? (String) pyObject.toJava(String.class) : SDK_VERSION;
        PyObject pyObject2 = module.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986144968879207643L));
        SDK_BETA = pyObject2 != null ? ((Boolean) pyObject2.toJava(Boolean.class)).booleanValue() : SDK_BETA;
        try {
            String[] strArr = (String[]) this.python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986145007533913307L)).callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986145076253390043L), getPluginsController().pluginsDir.getAbsolutePath(), getPluginsController().preferences.getAll()).toJava(String[].class);
            if (strArr.length > 0) {
                SharedPreferences.Editor editorEdit = getPluginsController().preferences.edit();
                for (String str : strArr) {
                    editorEdit.remove(str);
                }
                editorEdit.apply();
                FileLog.m1133d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986145097728226523L) + strArr.length + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986145140677899483L));
            }
        } catch (PyException e) {
            FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986145351131296987L), e);
        }
        PipController.INSTANCE.cleanup();
        loadPlugins(runnable);
        checkDevServer();
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void checkDevServer() {
        if (ExteraConfig.pluginsDevMode) {
            runDevServer();
        } else {
            stopDevServer();
        }
    }

    private void runDevServer() {
        if (getPython() == null) {
            return;
        }
        if (this.devServerClass != null) {
            stopDevServer();
        }
        try {
            PyObject pyObject = getPython().getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986145540109858011L)).get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986145587354498267L));
            this.devServerClass = pyObject;
            if (pyObject == null) {
                return;
            }
            pyObject.callAttrThrows(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986145630304171227L), new Object[0]);
            FileLog.m1133d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986145686138746075L));
        } catch (Throwable th) {
            FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986145827872666843L), th);
            this.devServerClass = null;
        }
    }

    private void stopDevServer() {
        PyObject pyObject = this.devServerClass;
        if (pyObject == null) {
            return;
        }
        try {
            pyObject.callAttrThrows(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986145965311620315L), new Object[0]);
            FileLog.m1133d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986146016851227867L));
        } catch (Throwable th) {
            try {
                FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986146158585148635L), th);
            } finally {
                this.devServerClass = null;
            }
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void shutdown(Runnable runnable) {
        if (getPython() == null) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        try {
            Iterator<String> it = this.pluginInstances.keySet().iterator();
            while (it.hasNext()) {
                unloadPlugin(it.next());
            }
            PyObject pyObject = this.debuggerListener;
            if (pyObject != null) {
                pyObject.close();
                this.debuggerListener = null;
            }
            this.pluginInstances.clear();
            synchronized (this) {
                stopAndUnloadSdk();
                this.python = null;
                this.basePluginClass = null;
            }
            FileLog.m1133d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986146270254298331L));
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public void loadPlugins(final Runnable runnable) {
        PluginsController.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadPlugins$2(runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPlugins$2(Runnable runnable) {
        Plugin plugin;
        if (getPython() == null) {
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
                return;
            }
            return;
        }
        try {
            PyObject module = getPython().getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986160366336963803L));
            try {
                PyObject pyObject = module.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986160383516832987L));
                if (pyObject != null) {
                    try {
                        pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986160404991669467L), getPluginsController().pluginsDir.getAbsolutePath());
                    } finally {
                    }
                }
                module.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986160435056440539L), Double.valueOf(0.001d));
                if (pyObject != null) {
                    pyObject.close();
                }
                module.close();
                File[] fileArrListFiles = getPluginsController().pluginsDir.listFiles(new FilenameFilter() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda7
                    @Override // java.io.FilenameFilter
                    public final boolean accept(File file, String str) {
                        return str.toLowerCase().endsWith(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986161139431077083L));
                    }
                });
                if (fileArrListFiles == null) {
                    getPluginsController().notifyPluginsChanged();
                    if (runnable != null) {
                        AndroidUtilities.runOnUIThread(runnable);
                        return;
                    }
                    return;
                }
                for (File file : fileArrListFiles) {
                    String strSubstring = file.getName().substring(0, file.getName().length() - 3);
                    PluginsController.PluginValidationResult pluginValidationResultValidatePluginFromFile = null;
                    try {
                        pluginValidationResultValidatePluginFromFile = validatePluginFromFile(file.getAbsolutePath());
                        if (pluginValidationResultValidatePluginFromFile.error != null) {
                            throw new Exception(pluginValidationResultValidatePluginFromFile.error);
                        }
                        loadPlugin(strSubstring, file.getAbsolutePath(), pluginValidationResultValidatePluginFromFile.plugin);
                    } catch (Throwable th) {
                        FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986160714229314779L) + file.getName() + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986160813013562587L) + th.getMessage(), th);
                        if (pluginValidationResultValidatePluginFromFile == null || (plugin = pluginValidationResultValidatePluginFromFile.plugin) == null) {
                            plugin = new Plugin(strSubstring, strSubstring);
                            plugin.setAuthor(LocaleController.getString(C2888R.string.PluginNoAuthor));
                            plugin.setVersion(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986160860258202843L));
                            plugin.setEngine(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986160877438072027L));
                        }
                        plugin.setError(th);
                        plugin.setEnabled(false);
                        getPluginsController().plugins.put(strSubstring, plugin);
                    }
                }
                getPluginsController().notifyPluginsChanged();
                FileLog.m1133d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986160907502843099L) + getPluginsController().plugins.size() + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986161087891469531L) + Collection.EL.stream(getPluginsController().plugins.values()).filter(new Predicate() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda8
                    public /* synthetic */ Predicate and(Predicate predicate) {
                        return Predicate$CC.$default$and(this, predicate);
                    }

                    public /* synthetic */ Predicate negate() {
                        return Predicate$CC.$default$negate(this);
                    }

                    /* JADX INFO: renamed from: or */
                    public /* synthetic */ Predicate m259or(Predicate predicate) {
                        return Predicate$CC.$default$or(this, predicate);
                    }

                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return PythonPluginsEngine.$r8$lambda$VvQ6Tr3bULe91kshg9QPBLt7pfk((Plugin) obj);
                    }
                }).count());
                if (runnable != null) {
                    AndroidUtilities.runOnUIThread(runnable);
                }
            } finally {
            }
        } catch (PyException e) {
            FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986160512365851867L), e);
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
            }
        }
    }

    public static /* synthetic */ boolean $r8$lambda$VvQ6Tr3bULe91kshg9QPBLt7pfk(Plugin plugin) {
        return plugin.isEnabled() && !plugin.hasError();
    }

    public void loadPlugin(String str, String str2) throws Exception {
        loadPlugin(str, str2, null, null);
    }

    public void loadPlugin(String str, String str2, Plugin plugin) throws Exception {
        loadPlugin(str, str2, plugin, null);
    }

    public void loadPlugin(String str, String str2, Plugin plugin, PipController.InstallerDelegate installerDelegate) throws Exception {
        boolean z = getPluginsController().preferences.getBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986146407693251803L) + str, false);
        File file = new File(str2);
        if (!file.exists() || !file.isFile()) {
            throw new Exception(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986146476412728539L) + str2);
        }
        if (plugin == null) {
            PluginsController.PluginValidationResult pluginValidationResultValidatePluginFromFile = validatePluginFromFile(str2);
            if (pluginValidationResultValidatePluginFromFile.error != null) {
                throw new Exception(pluginValidationResultValidatePluginFromFile.error);
            }
            plugin = pluginValidationResultValidatePluginFromFile.plugin;
        }
        if (!str.equals(plugin.getId())) {
            throw new Exception(String.format(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986146579491943643L), str, plugin.getId()));
        }
        if (this.pluginInstances.containsKey(str)) {
            unloadPlugin(str);
        }
        if (plugin.getRequirements() != null && !plugin.getRequirements().isEmpty()) {
            List<String> listInstallDependencies = PipController.INSTANCE.installDependencies(plugin.getRequirements(), str, installerDelegate);
            PyObject pyObject = getPython().getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986146841484948699L)).get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986146858664817883L));
            if (pyObject != null) {
                for (int size = listInstallDependencies.size() - 1; size >= 0; size--) {
                    String str3 = listInstallDependencies.get(size);
                    if (pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986146880139654363L), str3).toBoolean()) {
                        pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986146935974229211L), str3);
                    }
                    pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986146966039000283L), 0, str3);
                }
            }
        }
        try {
            PyObject pyObjectFindPluginClass = findPluginClass(getPython().getModule(str));
            if (pyObjectFindPluginClass == null) {
                throw new Exception(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986147137837692123L) + str + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986147369765926107L));
            }
            PyObject pyObjectCall = pyObjectFindPluginClass.call(new Object[0]);
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986147618874029275L), (Object) plugin.getId());
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986147631758931163L), (Object) plugin.getName());
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986147653233767643L), (Object) plugin.getDescription());
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986147704773375195L), (Object) plugin.getAuthor());
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986147734838146267L), (Object) plugin.getVersion());
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986147769197884635L), (Object) plugin.getIcon());
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986147790672721115L), (Object) plugin.getAppVersion());
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986147842212328667L), (Object) plugin.getSdkVersion());
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986147893751936219L), (Object) plugin.getRequirements());
            String string = Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986147949586511067L);
            Boolean bool = Boolean.FALSE;
            pyObjectCall.put(string, (Object) bool);
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986147983946249435L), (Object) bool);
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986148035485856987L), (PyObject) null);
            getPluginsController().plugins.put(str, plugin);
            this.pluginInstances.put(str, pyObjectCall);
            if (z) {
                setPluginEnabled(str, true, null);
            }
        } catch (PyException e) {
            throw new Exception(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986146996103771355L) + e.getMessage(), e);
        }
    }

    private PyObject findPluginClass(PyObject pyObject) {
        if (this.basePluginClass == null) {
            FileLog.m1134e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986148095615399131L) + pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986148357608404187L)));
            return null;
        }
        try {
            PyObject builtins = getPython().getBuiltins();
            PyObject pyObject2 = pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986148396263109851L));
            if (pyObject2 == null) {
                return null;
            }
            for (PyObject pyObject3 : pyObject2.asMap().values()) {
                if (builtins.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986148434917815515L), pyObject3, builtins.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986148482162455771L))).toBoolean() && !pyObject3.equals(this.basePluginClass) && builtins.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986148503637292251L), pyObject3, this.basePluginClass).toBoolean()) {
                    return pyObject3;
                }
            }
        } catch (PyException e) {
            FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986148550881932507L) + pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986148804285002971L)), e);
        }
        return null;
    }

    public void unloadPlugin(String str) {
        PluginsController pluginsController;
        this.settingsCache.remove(str);
        try {
            PyObject pyObjectRemove = this.pluginInstances.remove(str);
            if (pyObjectRemove == null) {
                if (pyObjectRemove != null) {
                    pyObjectRemove.close();
                    return;
                }
                return;
            }
            try {
                if (PyObjectUtils.getBoolean(pyObjectRemove, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986148842939708635L), false)) {
                    getPluginsController().watchdog.onPluginExecutionStarted(str);
                    try {
                        pyObjectRemove.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986148894479316187L), new Object[0]);
                        pluginsController = getPluginsController();
                    } catch (Throwable th) {
                        try {
                            FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986148967493760219L) + str, th);
                            pluginsController = getPluginsController();
                        } catch (Throwable th2) {
                            getPluginsController().watchdog.onPluginExecutionFinished(str);
                            throw th2;
                        }
                    }
                    pluginsController.watchdog.onPluginExecutionFinished(str);
                }
                getPluginsController().cleanupPlugin(str);
                PyObject pyObject = getPython().getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986149117817615579L)).get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986149134997484763L));
                if (pyObject != null && pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986149169357223131L), str) != null) {
                    pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986149186537092315L), str);
                }
                pyObjectRemove.close();
            } finally {
            }
        } catch (PyException e) {
            FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986149203716961499L) + str + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986149311091143899L), e);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void setPluginEnabled(String str, boolean z, final Utilities.Callback<String> callback) {
        PluginsController pluginsController;
        try {
            Plugin plugin = getPluginsController().plugins.get(str);
            PyObject pyObject = this.pluginInstances.get(str);
            if (plugin == null || pyObject == null) {
                throw new Exception(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986149388400555227L) + str);
            }
            if (PyObjectUtils.getBoolean(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986149470004933851L), false) == z && !plugin.hasError()) {
                if (callback != null) {
                    callback.run(null);
                    return;
                }
                return;
            }
            if (z) {
                getPluginsController().cleanupPlugin(str);
                getPluginsController().watchdog.onPluginExecutionStarted(str);
                try {
                    pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986149521544541403L), new Object[0]);
                    getPluginsController().watchdog.onPluginExecutionFinished(str);
                    pyObject.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986149585969050843L), (Object) Boolean.TRUE);
                    pyObject.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986149637508658395L), (PyObject) null);
                    plugin.setError(null);
                } finally {
                }
            } else {
                if (PyObjectUtils.getBoolean(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986149697638200539L), false)) {
                    getPluginsController().watchdog.onPluginExecutionStarted(str);
                    try {
                        pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986149749177808091L), new Object[0]);
                        pluginsController = getPluginsController();
                    } catch (Throwable th) {
                        try {
                            FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986149822192252123L) + str, th);
                            pluginsController = getPluginsController();
                        } finally {
                        }
                    }
                    pluginsController.watchdog.onPluginExecutionFinished(str);
                }
                pyObject.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986149972516107483L), (Object) Boolean.FALSE);
                getPluginsController().cleanupPlugin(str);
            }
            plugin.setEnabled(z);
            pyObject.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986150024055715035L), (Object) Boolean.valueOf(z));
            getPluginsController().preferences.edit().putBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986150058415453403L) + str, z).apply();
            if (z) {
                getPluginsController().loadPluginSettings(str);
            } else {
                getPluginsController().invalidatePluginSettings(str);
            }
            getPluginsController().notifyPluginsChanged();
            if (callback != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda18
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.run(null);
                    }
                });
            }
        } catch (Throwable th2) {
            FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986150127134930139L) + str, th2);
            if (z) {
                Plugin plugin2 = getPluginsController().plugins.get(str);
                if (plugin2 != null) {
                    plugin2.setEnabled(false);
                    plugin2.setError(th2);
                }
                PyObject pyObject2 = this.pluginInstances.get(str);
                if (pyObject2 != null) {
                    pyObject2.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986150316113491163L), (Object) Boolean.FALSE);
                    pyObject2.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986150350473229531L), (Object) th2.getMessage());
                }
                getPluginsController().preferences.edit().putBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986150410602771675L) + str, false).apply();
                getPluginsController().cleanupPlugin(str);
            }
            if (callback != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda19
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.run(AppUtils.stackTraceToString(th2));
                    }
                });
            }
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void deletePlugin(String str, final Utilities.Callback<String> callback) {
        if (this.pluginInstances.containsKey(str)) {
            unloadPlugin(str);
        }
        try {
            PipController.INSTANCE.uninstallDependencies(str);
        } catch (Exception e) {
            FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986150479322248411L) + str, e);
        }
        File file = new File(getPluginsController().pluginsDir, str + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986150642531005659L));
        if (file.exists()) {
            file.delete();
        }
        if (PluginsController.isPluginPinned(str)) {
            PluginsController.setPluginPinned(str, false);
        }
        getPluginsController().clearPluginSettingsPreferences(str);
        getPluginsController().plugins.remove(str);
        getPluginsController().notifyPluginsChanged();
        if (callback != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(null);
                }
            });
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public String getPluginPath(String str) {
        return getPluginsController().pluginsDir.getAbsolutePath() + File.separator + str + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986150659710874843L);
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void openInExternalApp(String str) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        File file = new File(getPluginPath(str));
        if (file.exists()) {
            AndroidUtilities.openForView(file, file.getName(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986150676890744027L), safeLastFragment.getParentActivity(), safeLastFragment.getResourceProvider(), false);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void sharePlugin(String str) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        String pluginPath = getPluginPath(str);
        File file = new File(ApplicationLoader.getFilesDirFixed(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986150724135384283L));
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, str + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986150745610220763L));
        try {
            FileInputStream fileInputStream = new FileInputStream(pluginPath);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    fileOutputStream.getChannel().transferFrom(fileInputStream.getChannel(), 0L, fileInputStream.getChannel().size());
                    fileOutputStream.close();
                    fileInputStream.close();
                    Uri uriForFile = FileProvider.getUriForFile(safeLastFragment.getContext(), ApplicationLoader.getApplicationId() + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986150779969959131L), file2);
                    Intent intent = new Intent(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986150822919632091L));
                    intent.setFlags(1);
                    intent.putExtra(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986150938883749083L), uriForFile);
                    intent.setType(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986151059142833371L));
                    safeLastFragment.startActivityForResult(Intent.createChooser(intent, LocaleController.getString(C2888R.string.ShareFile)), 500);
                    file2.deleteOnExit();
                } finally {
                }
            } finally {
            }
        } catch (IOException | IllegalArgumentException e) {
            FileLog.m1136e(e);
        }
    }

    public void loadPluginFromFile(String str, Plugin plugin, Utilities.Callback<String> callback) {
        loadPluginFromFile(str, plugin, callback, null);
    }

    public void loadPluginFromFile(final String str, final Plugin plugin, final Utilities.Callback<String> callback, final PipController.InstallerDelegate installerDelegate) {
        PluginsController.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadPluginFromFile$8(plugin, str, installerDelegate, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x00b3 A[EDGE_INSN: B:118:0x00b3->B:38:0x00b3 BREAK  A[LOOP:0: B:32:0x00a6->B:34:0x00ad], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:119:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ad A[Catch: all -> 0x00b1, LOOP:0: B:32:0x00a6->B:34:0x00ad, LOOP_END, TRY_LEAVE, TryCatch #0 {all -> 0x00b1, blocks: (B:31:0x00a4, B:32:0x00a6, B:34:0x00ad), top: B:99:0x00a4, outer: #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d4 A[Catch: all -> 0x0095, TRY_LEAVE, TryCatch #4 {all -> 0x0095, blocks: (B:15:0x0049, B:28:0x0098, B:39:0x00b6, B:41:0x00c2, B:43:0x00c8, B:44:0x00cb, B:46:0x00d4, B:59:0x00f0, B:58:0x00ed, B:55:0x00e8, B:29:0x009d, B:38:0x00b3, B:54:0x00e7, B:53:0x00e4), top: B:107:0x0049, inners: #8, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01b3  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$loadPluginFromFile$8(Plugin plugin, String str, PipController.InstallerDelegate installerDelegate, final Utilities.Callback callback) {
        File file;
        File file2;
        PyObject pyObjectRemove;
        String id;
        boolean zExists;
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        byte[] bArr;
        int i;
        String str2 = null;
        file = null;
        File file3 = null;
        boolean z = false;
        if (plugin == null) {
            try {
                PluginsController.PluginValidationResult pluginValidationResultValidatePluginFromFile = validatePluginFromFile(str);
                if (pluginValidationResultValidatePluginFromFile.error != null) {
                    throw new Exception(pluginValidationResultValidatePluginFromFile.error);
                }
                plugin = pluginValidationResultValidatePluginFromFile.plugin;
                id = plugin.getId();
                try {
                    file = new File(getPluginsController().pluginsDir, id + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986159545998210267L));
                    try {
                        zExists = file.exists();
                        if (zExists) {
                            try {
                                unloadPlugin(id);
                                file2 = new File(getPluginsController().pluginsDir, id + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986159563178079451L));
                            } catch (Throwable th) {
                                th = th;
                                file2 = file3;
                                str2 = id;
                                z = zExists;
                                FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986159765041542363L) + str, th);
                                if (str2 != null) {
                                }
                                getPluginsController().notifyPluginsChanged();
                                if (callback != null) {
                                }
                            }
                            try {
                                if (file2.exists()) {
                                    file2.delete();
                                }
                                if (!file.renameTo(file2)) {
                                    throw new IOException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986159597537817819L));
                                }
                                file3 = file2;
                            } catch (Throwable th2) {
                                th = th2;
                                str2 = id;
                                z = zExists;
                                FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986159765041542363L) + str, th);
                                if (str2 != null) {
                                }
                                getPluginsController().notifyPluginsChanged();
                                if (callback != null) {
                                }
                            }
                        }
                        fileInputStream = new FileInputStream(str);
                        try {
                            fileOutputStream = new FileOutputStream(file);
                            try {
                                bArr = new byte[1024];
                                while (true) {
                                    i = fileInputStream.read(bArr);
                                    if (i != -1) {
                                        break;
                                    } else {
                                        fileOutputStream.write(bArr, 0, i);
                                    }
                                }
                                fileOutputStream.close();
                                fileInputStream.close();
                                loadPlugin(id, file.getAbsolutePath(), plugin, installerDelegate);
                                if (file3 != null && file3.exists()) {
                                    file3.delete();
                                }
                                getPluginsController().notifyPluginsChanged();
                                if (callback == null) {
                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda14
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            callback.run(null);
                                        }
                                    });
                                    return;
                                }
                                return;
                            } finally {
                            }
                        } finally {
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        file2 = null;
                        str2 = id;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    file = null;
                    file2 = null;
                }
            } catch (Throwable th5) {
                th = th5;
                file = null;
                file2 = null;
            }
        } else {
            id = plugin.getId();
            file = new File(getPluginsController().pluginsDir, id + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986159545998210267L));
            zExists = file.exists();
            if (zExists) {
            }
            fileInputStream = new FileInputStream(str);
            fileOutputStream = new FileOutputStream(file);
            bArr = new byte[1024];
            while (true) {
                i = fileInputStream.read(bArr);
                if (i != -1) {
                }
                fileOutputStream.write(bArr, 0, i);
            }
            fileOutputStream.close();
            fileInputStream.close();
            loadPlugin(id, file.getAbsolutePath(), plugin, installerDelegate);
            if (file3 != null) {
                file3.delete();
            }
            getPluginsController().notifyPluginsChanged();
            if (callback == null) {
            }
        }
        FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986159765041542363L) + str, th);
        if (str2 != null) {
            if (file != null && file.exists()) {
                file.delete();
            }
            if (z && file2 != null && file2.exists()) {
                if (file2.renameTo(file)) {
                    try {
                        loadPlugin(str2, file.getAbsolutePath());
                    } catch (Exception e) {
                        FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986159954020103387L) + str2, e);
                        getPluginsController().cleanupPlugin(str2);
                        PipController.INSTANCE.uninstallDependencies(str2);
                        pyObjectRemove = this.pluginInstances.remove(str2);
                        if (pyObjectRemove != null) {
                        }
                        getPluginsController().clearPluginSettingsPreferences(str2);
                        getPluginsController().plugins.remove(str2);
                        if (file != null) {
                        }
                    }
                } else {
                    FileLog.m1134e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986160207423173851L) + str2);
                }
                getPluginsController().cleanupPlugin(str2);
                PipController.INSTANCE.uninstallDependencies(str2);
                pyObjectRemove = this.pluginInstances.remove(str2);
                if (pyObjectRemove != null) {
                }
                getPluginsController().clearPluginSettingsPreferences(str2);
                getPluginsController().plugins.remove(str2);
                if (file != null) {
                    file.delete();
                }
            } else {
                getPluginsController().cleanupPlugin(str2);
                try {
                    PipController.INSTANCE.uninstallDependencies(str2);
                } catch (Exception e2) {
                    FileLog.m1136e(e2);
                }
                pyObjectRemove = this.pluginInstances.remove(str2);
                if (pyObjectRemove != null) {
                    pyObjectRemove.close();
                }
                getPluginsController().clearPluginSettingsPreferences(str2);
                getPluginsController().plugins.remove(str2);
                if (file != null && file.exists()) {
                    file.delete();
                }
            }
        }
        getPluginsController().notifyPluginsChanged();
        if (callback != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(AppUtils.stackTraceToString(th));
                }
            });
        }
    }

    public PluginsController.PluginValidationResult validatePluginFromFile(String str) {
        if (!new File(str).exists()) {
            return new PluginsController.PluginValidationResult(null, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986151149337146587L));
        }
        try {
            Map<String, String> pluginMetadata = parsePluginMetadata(str);
            String str2 = pluginMetadata.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986151248121394395L));
            String str3 = pluginMetadata.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986151261006296283L));
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                if (!str2.matches(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986151557359039707L))) {
                    return new PluginsController.PluginValidationResult(null, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986151686208058587L));
                }
                String str4 = pluginMetadata.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986152253143741659L));
                if (str4 != null) {
                    Matcher matcher = VERSION_PATTERN.matcher(str4);
                    if (!matcher.matches()) {
                        return new PluginsController.PluginValidationResult(null, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986152304683349211L) + str4);
                    }
                    if (!AppUtils.compareVersions(matcher.group(1), BuildVars.BUILD_VERSION_STRING, matcher.group(2).trim())) {
                        return new PluginsController.PluginValidationResult(null, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986152394877662427L) + str4 + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986152519431714011L) + BuildVars.BUILD_VERSION_STRING);
                    }
                }
                String str5 = pluginMetadata.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986152596741125339L));
                if (str5 != null) {
                    Matcher matcher2 = VERSION_PATTERN.matcher(str5);
                    if (!matcher2.matches()) {
                        return new PluginsController.PluginValidationResult(null, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986152648280732891L) + str5);
                    }
                    if (!AppUtils.compareVersions(matcher2.group(1), SDK_VERSION, matcher2.group(2).trim())) {
                        return new PluginsController.PluginValidationResult(null, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986152738475046107L) + str5 + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986152863029097691L) + SDK_VERSION);
                    }
                }
                Plugin plugin = new Plugin(str2, str3);
                plugin.setEngine(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986152940338509019L));
                plugin.setAuthor((String) Map.EL.getOrDefault(pluginMetadata, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986152970403280091L), LocaleController.getString(C2888R.string.PluginNoAuthor)));
                plugin.setDescription((String) Map.EL.getOrDefault(pluginMetadata, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986153000468051163L), LocaleController.getString(C2888R.string.PluginNoDescription)));
                plugin.setIcon(pluginMetadata.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986153052007658715L)));
                plugin.setVersion((String) Map.EL.getOrDefault(pluginMetadata, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986153073482495195L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986153107842233563L)));
                plugin.setAppVersion(str4);
                plugin.setSdkVersion(str5);
                String str6 = pluginMetadata.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986153125022102747L));
                if (str6 != null && !str6.isEmpty()) {
                    plugin.setRequirements((List) DesugarArrays.stream(str6.split(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986153180856677595L))).map(new Function() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda1
                        public /* synthetic */ Function andThen(Function function) {
                            return Function$CC.$default$andThen(this, function);
                        }

                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            return ((String) obj).trim();
                        }

                        public /* synthetic */ Function compose(Function function) {
                            return Function$CC.$default$compose(this, function);
                        }
                    }).filter(new Predicate() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda2
                        public /* synthetic */ Predicate and(Predicate predicate) {
                            return Predicate$CC.$default$and(this, predicate);
                        }

                        public /* synthetic */ Predicate negate() {
                            return Predicate$CC.$default$negate(this);
                        }

                        /* JADX INFO: renamed from: or */
                        public /* synthetic */ Predicate m258or(Predicate predicate) {
                            return Predicate$CC.$default$or(this, predicate);
                        }

                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            return PythonPluginsEngine.$r8$lambda$1xTTpe9mU223IdqQV5HiinDDrjs((String) obj);
                        }
                    }).collect(Collectors.toList()));
                }
                plugin.setEnabled(getPluginsController().preferences.getBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986153253871121627L) + str2, false));
                return new PluginsController.PluginValidationResult(plugin, null);
            }
            return new PluginsController.PluginValidationResult(null, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986151282481132763L));
        } catch (PyException e) {
            FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986153322590598363L) + str + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986153455734584539L) + e.getMessage(), e);
            return new PluginsController.PluginValidationResult(null, e.getMessage());
        } catch (Throwable th) {
            FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986153498684257499L) + str, th);
            return new PluginsController.PluginValidationResult(null, th.getMessage());
        }
    }

    public static /* synthetic */ boolean $r8$lambda$1xTTpe9mU223IdqQV5HiinDDrjs(String str) {
        return !str.isEmpty();
    }

    public List<SettingItem> parsePySettingDefinitions(List<PyObject> list) {
        Object editTextSetting;
        Object customSetting;
        ArrayList arrayList = new ArrayList(list.size());
        for (PyObject pyObject : list) {
            if (pyObject != null) {
                Object headerSetting = null;
                String string = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986153653303080155L), null);
                if (string == null) {
                    FileLog.m1137w(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986153674777916635L));
                } else {
                    String string2 = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986153932475954395L), null);
                    String string3 = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986153949655823579L), null);
                    String string4 = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986153971130660059L), null);
                    String string5 = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154005490398427L), null);
                    PyObject pyObject2 = pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154026965234907L));
                    PyObject pyObject3 = pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154069914907867L));
                    String string6 = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154130044450011L), null);
                    PyObject pyObject4 = pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154177289090267L));
                    PyObject pyObject5 = pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154211648828635L));
                    PyObject pyObject6 = pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154250303534299L));
                    switch (string.hashCode()) {
                        case -1866021310:
                            if (string.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154460756931803L))) {
                                String string7 = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154619670721755L), null);
                                boolean z = PyObjectUtils.getBoolean(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154641145558235L), false);
                                int i = PyObjectUtils.getInt(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154684095231195L), 256);
                                String string8 = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154731339871451L), null);
                                if (string2 != null && string7 != null) {
                                    editTextSetting = new EditTextSetting(string2, string7, pyObject4 != null ? pyObject4.toString() : Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154752814707931L), z, i, string8, pyObject2);
                                    headerSetting = editTextSetting;
                                }
                            }
                            break;
                        case -1349088399:
                            if (string.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154559541179611L))) {
                                PyObject pyObject7 = pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154804354315483L));
                                PyObject pyObject8 = pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154825829151963L));
                                PyObject pyObject9 = pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154847303988443L));
                                PyObject pyObject10 = pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154881663726811L));
                                if (pyObject9 != null) {
                                    customSetting = pyObject10 == null ? new CustomSetting((CustomSetting.Factory<?>) pyObject9.toJava(CustomSetting.Factory.class), pyObject5, pyObject6, pyObject3, string6) : new CustomSetting((CustomSetting.Factory) pyObject9.toJava(CustomSetting.Factory.class), pyObject10, pyObject5, pyObject6, pyObject3, string6);
                                } else if (pyObject8 != null) {
                                    customSetting = new CustomSetting((UItem) pyObject8.toJava(UItem.class), pyObject5, pyObject6, pyObject3, string6);
                                } else if (pyObject7 != null) {
                                    customSetting = new CustomSetting((View) pyObject7.toJava(View.class), pyObject5, pyObject6, pyObject3, string6);
                                }
                                headerSetting = customSetting;
                            }
                            break;
                        case -1221270899:
                            if (string.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154336202880219L)) && string3 != null) {
                                headerSetting = new HeaderSetting(string3);
                            }
                            break;
                        case -889473228:
                            if (string.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154366267651291L)) && string2 != null && string3 != null && pyObject4 != null) {
                                editTextSetting = new SwitchSetting(string2, string3, pyObject4.toBoolean(), string4, string5, pyObject2, pyObject3, string6);
                                headerSetting = editTextSetting;
                            }
                            break;
                        case 3556653:
                            if (string.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154503706604763L))) {
                                boolean z2 = PyObjectUtils.getBoolean(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154757109675227L), false);
                                boolean z3 = PyObjectUtils.getBoolean(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154787174446299L), false);
                                if (string3 != null) {
                                    headerSetting = new TextSetting(string3, string4, string5, z2, z3, pyObject5, pyObject6, pyObject3, string6);
                                }
                            }
                            break;
                        case 100358090:
                            if (string.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154434987128027L)) && string2 != null && string3 != null) {
                                editTextSetting = new InputSetting(string2, string3, pyObject4 != null ? pyObject4.toString() : Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154615375754459L), string4, string5, pyObject2, pyObject3, string6);
                                headerSetting = editTextSetting;
                            }
                            break;
                        case 1191572447:
                            if (string.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154396332422363L))) {
                                String[] stringArray = PyObjectUtils.getStringArray(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154589605950683L), null);
                                if (string2 != null && string3 != null && stringArray != null && stringArray.length != 0 && pyObject4 != null) {
                                    editTextSetting = new SelectorSetting(string2, string3, pyObject4.toInt(), stringArray, string5, pyObject2, pyObject3, string6);
                                    headerSetting = editTextSetting;
                                }
                            }
                            break;
                        case 1674318617:
                            if (string.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154525181441243L))) {
                                headerSetting = new DividerSetting(string3);
                            }
                            break;
                    }
                    if (headerSetting != null) {
                        arrayList.add(headerSetting);
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public List<SettingItem> loadPluginSettings(String str) {
        try {
            Plugin plugin = getPluginsController().plugins.get(str);
            PyObject pyObject = this.pluginInstances.get(str);
            if (plugin != null && plugin.isEnabled() && !plugin.hasError() && pyObject != null) {
                PyObject pyObjectCallAttr = pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986154937498301659L), new Object[0]);
                if (pyObjectCallAttr == null) {
                    return null;
                }
                List<PyObject> listAsList = pyObjectCallAttr.asList();
                if (listAsList.isEmpty()) {
                    return null;
                }
                return parsePySettingDefinitions(listAsList);
            }
            getPluginsController().invalidatePluginSettings(str);
            return null;
        } catch (Exception e) {
            FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986155006217778395L), e);
            return null;
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void executeOnAppEvent(String str) {
        PluginsController pluginsController;
        PyObject pyObject = getPython().getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986155139361764571L)).get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986155190901372123L));
        if (pyObject == null) {
            return;
        }
        PyObject pyObjectCall = pyObject.call(str);
        try {
            PyObject pyObject2 = this.debuggerListener;
            if (pyObject2 != null) {
                try {
                    pyObject2.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986155229556077787L), pyObjectCall);
                } catch (PyException e) {
                    FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986155285390652635L), e);
                }
            }
            for (Map.Entry<String, PyObject> entry : this.pluginInstances.entrySet()) {
                String key = entry.getKey();
                PyObject value = entry.getValue();
                if (PyObjectUtils.getBoolean(value, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986155500139017435L), false) && PyObjectUtils.getString(value, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986155534498755803L), null) == null) {
                    getPluginsController().watchdog.onPluginExecutionStarted(key);
                    try {
                        try {
                            value.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986155594628297947L), pyObjectCall);
                            pluginsController = getPluginsController();
                        } catch (Throwable th) {
                            getPluginsController().watchdog.onPluginExecutionFinished(key);
                            throw th;
                        }
                    } catch (PyException e2) {
                        FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986155650462872795L) + str + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986155749247120603L) + key, e2);
                        pluginsController = getPluginsController();
                    }
                    pluginsController.watchdog.onPluginExecutionFinished(key);
                }
            }
            if (pyObjectCall != null) {
                pyObjectCall.close();
            }
        } catch (Throwable th2) {
            if (pyObjectCall != null) {
                try {
                    pyObjectCall.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
            }
            throw th2;
        }
    }

    public <T> PluginsController.HookResult<T> executeHook(PyObject pyObject, T t, Class<T> cls, String str, PyMethodCaller<T> pyMethodCaller, Utilities.Callback<PyException> callback) {
        if (pyObject != null) {
            try {
                PyObject pyObjectCall = pyMethodCaller.call(pyObject, t);
                if (pyObjectCall != null) {
                    String string = PyObjectUtils.getString(pyObjectCall, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986155775016924379L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986155813671630043L));
                    if (string.endsWith(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986155848031368411L))) {
                        return new PluginsController.HookResult<>(null, true, false);
                    }
                    if (string.endsWith(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986155878096139483L)) || string.endsWith(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986155908160910555L))) {
                        PyObject pyObject2 = pyObjectCall.get((Object) str);
                        if (pyObject2 != null) {
                            t = (T) pyObject2.toJava(cls);
                        }
                        if (string.endsWith(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986155963995485403L))) {
                            return new PluginsController.HookResult<>(t, false, true);
                        }
                    }
                }
            } catch (PyException e) {
                callback.run(e);
            }
        }
        return new PluginsController.HookResult<>(t, false, false);
    }

    private <T> PluginsController.HookResult<T> executeHook(String str, T t, Class<T> cls, String str2, PyMethodCaller<T> pyMethodCaller, Utilities.Callback<PyException> callback) {
        getPluginsController().watchdog.onPluginExecutionStarted(str);
        try {
            return executeHook(this.pluginInstances.get(str), t, cls, str2, pyMethodCaller, callback);
        } finally {
            getPluginsController().watchdog.onPluginExecutionFinished(str);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public PluginsController.HookResult<TLObject> executePreRequestHook(final String str, final int i, TLObject tLObject, final String str2) {
        return executeHook(str2, tLObject, (Class<TLObject>) TLObject.class, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986156019830060251L), (PyMethodCaller<TLObject>) new PyMethodCaller() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda24
            @Override // com.exteragram.messenger.plugins.PythonPluginsEngine.PyMethodCaller
            public final PyObject call(PyObject pyObject, Object obj) {
                return pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986159472983766235L), str, Integer.valueOf(i), (TLObject) obj);
            }
        }, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda25
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986159279710237915L) + str2 + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986159447213962459L) + str, (PyException) obj);
            }
        });
    }

    public PluginsController.HookResult<PluginsHooks.PostRequestResult> executePostRequestHook(String str, int i, TLObject tLObject, TLRPC.TL_error tL_error, PyObject pyObject) {
        if (pyObject != null) {
            try {
                PyObject pyObjectCallAttr = pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986156054189798619L), str, Integer.valueOf(i), tLObject, tL_error);
                if (pyObjectCallAttr != null) {
                    String string = PyObjectUtils.getString(pyObjectCallAttr, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986156131499209947L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986156170153915611L));
                    if (string.endsWith(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986156174448882907L)) || string.endsWith(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986156204513653979L))) {
                        PyObject pyObject2 = pyObjectCallAttr.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986156260348228827L));
                        if (pyObject2 != null) {
                            tLObject = (TLObject) pyObject2.toJava(TLObject.class);
                        }
                        PyObject pyObject3 = pyObjectCallAttr.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986156299002934491L));
                        if (pyObject3 != null) {
                            tL_error = (TLRPC.TL_error) pyObject3.toJava(TLRPC.TL_error.class);
                        }
                        if (string.endsWith(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986156324772738267L))) {
                            return new PluginsController.HookResult<>(new PluginsHooks.PostRequestResult(tLObject, tL_error), false, true);
                        }
                    }
                }
            } catch (PyException e) {
                FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986156380607313115L) + str, e);
            }
        }
        return new PluginsController.HookResult<>(new PluginsHooks.PostRequestResult(tLObject, tL_error), false, false);
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public PluginsController.HookResult<PluginsHooks.PostRequestResult> executePostRequestHook(String str, int i, TLObject tLObject, TLRPC.TL_error tL_error, String str2) {
        getPluginsController().watchdog.onPluginExecutionStarted(str2);
        try {
            return executePostRequestHook(str, i, tLObject, tL_error, this.pluginInstances.get(str2));
        } finally {
            getPluginsController().watchdog.onPluginExecutionFinished(str2);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public PluginsController.HookResult<TLRPC.Update> executeUpdateHook(final String str, final int i, TLRPC.Update update, String str2) {
        return executeHook(str2, update, (Class<TLRPC.Update>) TLRPC.Update.class, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986156556700972251L), (PyMethodCaller<TLRPC.Update>) new PyMethodCaller() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda3
            @Override // com.exteragram.messenger.plugins.PythonPluginsEngine.PyMethodCaller
            public final PyObject call(PyObject pyObject, Object obj) {
                return pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986159215285728475L), str, Integer.valueOf(i), (TLRPC.Update) obj);
            }
        }, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986159052076971227L) + str, (PyException) obj);
            }
        });
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public PluginsController.HookResult<TLRPC.Updates> executeUpdatesHook(final String str, final int i, TLRPC.Updates updates, String str2) {
        return executeHook(str2, updates, (Class<TLRPC.Updates>) TLRPC.Updates.class, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986156586765743323L), (PyMethodCaller<TLRPC.Updates>) new PyMethodCaller() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda11
            @Override // com.exteragram.messenger.plugins.PythonPluginsEngine.PyMethodCaller
            public final PyObject call(PyObject pyObject, Object obj) {
                return pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986158983357494491L), str, Integer.valueOf(i), (TLRPC.Updates) obj);
            }
        }, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda12
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986158815853769947L) + str, (PyException) obj);
            }
        });
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public PluginsController.HookResult<SendMessagesHelper.SendMessageParams> executeSendMessageHook(final int i, SendMessagesHelper.SendMessageParams sendMessageParams, final String str) {
        return executeHook(str, sendMessageParams, (Class<SendMessagesHelper.SendMessageParams>) SendMessagesHelper.SendMessageParams.class, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986156621125481691L), (PyMethodCaller<SendMessagesHelper.SendMessageParams>) new PyMethodCaller() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda21
            @Override // com.exteragram.messenger.plugins.PythonPluginsEngine.PyMethodCaller
            public final PyObject call(PyObject pyObject, Object obj) {
                return pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986158725659456731L), Integer.valueOf(i), (SendMessagesHelper.SendMessageParams) obj);
            }
        }, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda22
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986158536680895707L) + str, (PyException) obj);
            }
        });
    }

    public String fetchParameterValue(String str, String str2) {
        if (str == null) {
            return null;
        }
        try {
            File file = new File(str);
            if (file.exists() && file.isFile()) {
                return parsePluginMetadata(str).get(str2);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public java.util.Map<String, String> parsePluginMetadata(String str) {
        HashMap map = new HashMap();
        if (str != null) {
            File file = new File(str);
            if (file.exists() && file.isFile()) {
                if (getPython() == null) {
                    FileLog.m1134e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986156651190252763L) + str);
                    return map;
                }
                try {
                    PyObject pyObjectCallAttr = getPython().getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986156900298355931L)).callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986157024852407515L), str);
                    if (pyObjectCallAttr != null) {
                        for (Map.Entry<PyObject, PyObject> entry : pyObjectCallAttr.asMap().entrySet()) {
                            map.put(entry.getKey().toString(), entry.getValue().toString());
                        }
                    }
                } catch (PyException e) {
                    FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986157080686982363L) + str + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986157213830968539L) + e.getMessage(), e);
                    throw e;
                }
            }
        }
        return map;
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public Object getPluginSetting(String str, String str2, Object obj) {
        Object java2;
        ConcurrentHashMap<String, Object> concurrentHashMap = this.settingsCache.get(str);
        if (concurrentHashMap != null && concurrentHashMap.containsKey(str2)) {
            return concurrentHashMap.get(str2);
        }
        if (getPython() != null) {
            try {
                PyObject pyObjectCallAttr = getPython().getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986157256780641499L)).callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986157325500118235L), str, str2, obj);
                if (pyObjectCallAttr != null) {
                    if (obj instanceof Boolean) {
                        java2 = Boolean.valueOf(pyObjectCallAttr.toBoolean());
                    } else if (obj instanceof Integer) {
                        java2 = Integer.valueOf(pyObjectCallAttr.toInt());
                    } else if (obj instanceof String) {
                        java2 = pyObjectCallAttr.toString();
                    } else if (obj instanceof Float) {
                        java2 = Float.valueOf(pyObjectCallAttr.toFloat());
                    } else if (obj instanceof Long) {
                        java2 = Long.valueOf(pyObjectCallAttr.toLong());
                    } else {
                        java2 = pyObjectCallAttr.toJava(obj.getClass());
                    }
                    ((ConcurrentHashMap) ConcurrentMap$EL.computeIfAbsent(this.settingsCache, str, new Function() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda26
                        public /* synthetic */ Function andThen(Function function) {
                            return Function$CC.$default$andThen(this, function);
                        }

                        @Override // java.util.function.Function
                        public final Object apply(Object obj2) {
                            return PythonPluginsEngine.$r8$lambda$Hm8Sc2Lun_5hy4O6UL1WOvthXAU((String) obj2);
                        }

                        public /* synthetic */ Function compose(Function function) {
                            return Function$CC.$default$compose(this, function);
                        }
                    })).put(str2, java2);
                    return java2;
                }
            } catch (PyException e) {
                FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986157377039725787L) + str + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986157505888744667L) + str2, e);
                return obj;
            }
        }
        return obj;
    }

    public static /* synthetic */ ConcurrentHashMap $r8$lambda$Hm8Sc2Lun_5hy4O6UL1WOvthXAU(String str) {
        return new ConcurrentHashMap();
    }

    /* JADX INFO: renamed from: $r8$lambda$58hVkzk-j9sKVPRRdHKq1HHycaE, reason: not valid java name */
    public static /* synthetic */ ConcurrentHashMap m2620$r8$lambda$58hVkzkj9sKVPRRdHKq1HHycaE(String str) {
        return new ConcurrentHashMap();
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void setPluginSetting(String str, String str2, Object obj) {
        ((ConcurrentHashMap) ConcurrentMap$EL.computeIfAbsent(this.settingsCache, str, new Function() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda0
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj2) {
                return PythonPluginsEngine.m2620$r8$lambda$58hVkzkj9sKVPRRdHKq1HHycaE((String) obj2);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        })).put(str2, obj);
        if (getPython() == null) {
            return;
        }
        try {
            getPython().getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986157514478679259L)).callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986157583198155995L), str, str2, obj);
        } catch (PyException e) {
            FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986157634737763547L) + str + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986157763586782427L) + str2, e);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void clearPluginSettings(String str) {
        this.settingsCache.remove(str);
        if (getPython() == null) {
            return;
        }
        try {
            getPython().getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986157772176717019L)).callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986157840896193755L), str);
        } catch (PyException e) {
            FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986157905320703195L) + str, e);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public java.util.Map<String, ?> getAllPluginSettings(String str) {
        if (getPython() == null) {
            return null;
        }
        try {
            PyObject pyObjectCallAttr = getPython().getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986158064234493147L)).callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986158132953969883L), str);
            if (pyObjectCallAttr != null) {
                HashMap map = new HashMap();
                for (Map.Entry<PyObject, PyObject> entry : pyObjectCallAttr.asMap().entrySet()) {
                    if (entry.getKey() != null) {
                        map.put(entry.getKey().toString(), entry.getValue() != null ? entry.getValue().toJava(Object.class) : null);
                    }
                }
                this.settingsCache.put(str, new ConcurrentHashMap<>(map));
                return map;
            }
        } catch (PyException e) {
            FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986158205968413915L) + str, e);
        }
        return null;
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void showInstallDialog(final BaseFragment baseFragment, InstallPluginBottomSheet.PluginInstallParams pluginInstallParams) {
        File file = new File(pluginInstallParams.filePath);
        final String strFetchParameterValue = fetchParameterValue(pluginInstallParams.filePath, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986158373472138459L));
        if (TextUtils.isEmpty(strFetchParameterValue) && file.exists()) {
            strFetchParameterValue = file.getName();
        }
        final PluginsController.PluginValidationResult pluginValidationResultValidatePluginFromFile = validatePluginFromFile(pluginInstallParams.filePath);
        if (pluginValidationResultValidatePluginFromFile.plugin != null) {
            new InstallPluginBottomSheet(baseFragment, pluginValidationResultValidatePluginFromFile, pluginInstallParams).show();
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    BaseFragment baseFragment2 = baseFragment;
                    BulletinFactory.m1246of(baseFragment2).createSimpleBulletin(C2888R.raw.error, LocaleController.formatString(C2888R.string.PluginInstallError, strFetchParameterValue), LocaleUtils.createCopySpan(baseFragment2), new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda13
                        @Override // java.lang.Runnable
                        public final void run() {
                            PythonPluginsEngine.$r8$lambda$8dU_agcMSswgsS3LqmxpSeyACpA(pluginValidationResult, baseFragment2);
                        }
                    }).show();
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$8dU_agcMSswgsS3LqmxpSeyACpA(PluginsController.PluginValidationResult pluginValidationResult, BaseFragment baseFragment) {
        if (AndroidUtilities.addToClipboard(pluginValidationResult.error)) {
            BulletinFactory.m1246of(baseFragment).createCopyBulletin(LocaleController.getString(C2888R.string.TextCopied)).show();
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void openPluginSettings(String str, BaseFragment baseFragment) {
        Plugin plugin = getPluginsController().plugins.get(str);
        if (plugin != null) {
            openPluginSettings(plugin, baseFragment);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void openPluginSettings(final Plugin plugin, final BaseFragment baseFragment) {
        if (plugin == null) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                baseFragment.presentFragment(new PluginSettingsActivity(plugin));
            }
        });
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void openPluginSetting(final Plugin plugin, final String str, final BaseFragment baseFragment) {
        if (plugin == null) {
            return;
        }
        PluginsController.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openPluginSetting$24(plugin, str, baseFragment);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openPluginSetting$24(Plugin plugin, String str, final BaseFragment baseFragment) {
        final PluginSettingsActivity pluginSettingsActivity;
        FileLog.m1133d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986158394946974939L) + plugin.getId() + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986158502321157339L) + str);
        if (str == null || !str.contains(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986158510911091931L))) {
            pluginSettingsActivity = new PluginSettingsActivity(plugin, str);
        } else {
            List<SettingItem> list = getPluginsController().settings.get(plugin.getId());
            if (list == null) {
                return;
            }
            String[] strArrSplit = str.split(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986158519501026523L));
            TextSetting textSetting = null;
            List<SettingItem> pySettingDefinitions = list;
            for (int i = 0; i < strArrSplit.length - 1; i++) {
                String str2 = strArrSplit[i];
                Iterator<SettingItem> it = pySettingDefinitions.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    SettingItem next = it.next();
                    if (next instanceof TextSetting) {
                        TextSetting textSetting2 = (TextSetting) next;
                        if (str2.equals(textSetting2.linkAlias)) {
                            try {
                                PyObject pyObjectCall = textSetting2.createSubFragmentCallback.call(new Object[0]);
                                if (pyObjectCall != null) {
                                    pySettingDefinitions = parsePySettingDefinitions(pyObjectCall.asList());
                                }
                            } catch (Exception unused) {
                            }
                            textSetting = textSetting2;
                        }
                    }
                }
                if (textSetting == null && pySettingDefinitions.isEmpty()) {
                    SettingsRegistry.getInstance().onSettingNotFound(baseFragment);
                    return;
                }
            }
            if (textSetting == null) {
                return;
            } else {
                pluginSettingsActivity = new PluginSettingsActivity(plugin, textSetting.text, pySettingDefinitions, textSetting.createSubFragmentCallback, strArrSplit[strArrSplit.length - 1]).setSettingsLinkPrefix(AdBlockClient$$ExternalSyntheticBackport0.m220m(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986158528090961115L), (CharSequence[]) Arrays.copyOf(strArrSplit, strArrSplit.length - 1)));
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                baseFragment.presentFragment(pluginSettingsActivity);
            }
        });
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void openPluginSetting(String str, String str2, BaseFragment baseFragment) {
        Plugin plugin = getPluginsController().plugins.get(str);
        if (plugin != null) {
            openPluginSetting(plugin, str2, baseFragment);
        }
    }

    public void setDebuggerListener(PyObject pyObject) {
        this.debuggerListener = pyObject;
    }

    public static class Updater {
        private static int TAG = 0;
        private static boolean isLoading = false;
        private static long lastCheckUpdateTime = 0;
        public static boolean notifyWhenChangeStatus = false;
        public static int status;
        private static final Pattern PYTHON_SDK_APP_VERSION_PATTERN = Pattern.compile(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986163840965506267L));
        private static final Pattern PYTHON_SDK_APP_VERSION_CODE_PATTERN = Pattern.compile(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986163961224590555L));
        private static final Runnable notifyRunnable = new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$Updater$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pluginsPySdkInfoChanged, new Object[0]);
            }
        };

        public static CharSequence getVersion() {
            StringBuilder sb = new StringBuilder();
            sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986161951179896027L));
            sb.append(PythonPluginsEngine.SDK_VERSION);
            sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(PythonPluginsEngine.SDK_BETA ? -5986161959769830619L : -5986161985539634395L));
            return sb.toString();
        }

        public static CharSequence getStateString() {
            int i = status;
            if (i == 0) {
                return getVersion();
            }
            if (i == 1) {
                return LocaleController.getString(C2888R.string.CheckingForUpdates);
            }
            if (i != 2) {
                if (i == 3) {
                    return LocaleController.getString(C2888R.string.LoadingUpdate);
                }
                if (i == 4) {
                    return LocaleController.getString(C2888R.string.RestartPluginSystemToApplyUpdate);
                }
                return null;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(LocaleController.getString(C2888R.string.LatestVersionInstalled));
            sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986161989834601691L));
            sb.append(PythonPluginsEngine.SDK_VERSION);
            sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(PythonPluginsEngine.SDK_BETA ? -5986162007014470875L : -5986162032784274651L));
            sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162037079241947L));
            return sb.toString();
        }

        public static class PythonSdkUpdateInfo extends TLRPC.TL_help_appUpdate {
            public String appVersion;
            public String appVersionCode;
            public String appVersionCodeOperator;
            public String appVersionOperator;
            public boolean available;
            public String channel;
            public TLRPC.Message message;

            PythonSdkUpdateInfo() {
                clear();
            }

            public void clear() {
                this.message = null;
                this.available = false;
                this.can_not_skip = false;
                this.channel = null;
                this.version = null;
                this.appVersion = null;
                this.appVersionOperator = null;
                this.appVersionCode = null;
                this.appVersionCodeOperator = null;
                this.document = null;
            }

            public boolean canInstall() {
                String str;
                String str2;
                String str3 = this.appVersion;
                if (str3 != null && (str2 = this.appVersionOperator) != null && !Updater.isAppVersionCompatible(str2, str3)) {
                    return false;
                }
                String str4 = this.appVersionCode;
                if (str4 != null && (str = this.appVersionCodeOperator) != null && !Updater.isAppVersionCodeCompatible(str, str4)) {
                    return false;
                }
                String str5 = this.version;
                return (str5 == null || Updater.isSdkVersionNewer(str5, Objects.equals(this.channel, Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986143482820523227L)))) && this.document != null;
            }
        }

        static InputStream sdkFromApk() {
            return ApplicationLoader.applicationContext.getAssets().open(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162045669176539L));
        }

        public static boolean isSdkFromApk() {
            return new File(new File(ApplicationLoader.getFilesDirFixed(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162118683620571L)), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162157338326235L)).exists() || requestSdkFromApkFile().exists();
        }

        static void setBuildFromApk(boolean z) {
            File file = new File(new File(ApplicationLoader.getFilesDirFixed(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162238942704859L)), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162277597410523L));
            if (file.exists() && !z) {
                file.delete();
            }
            if (file.exists() || !z) {
                return;
            }
            AndroidUtilities.createEmptyFile(file);
        }

        public static String hashBytes(InputStream inputStream) {
            try {
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162359201789147L));
                    byte[] bArr = new byte[1048576];
                    while (true) {
                        int i = inputStream.read(bArr);
                        if (i <= 0) {
                            break;
                        }
                        messageDigest.update(bArr, 0, i);
                    }
                    byte[] bArrDigest = messageDigest.digest();
                    StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
                    for (byte b : bArrDigest) {
                        sb.append(String.format(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162384971592923L), Byte.valueOf(b)));
                    }
                    String string = sb.toString();
                    inputStream.close();
                    return string;
                } catch (IOException | NoSuchAlgorithmException e) {
                    throw new RuntimeException(e);
                }
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        public static File getPythonSdkUpdateFile() {
            return new File(new File(ApplicationLoader.getFilesDirFixed(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162406446429403L)), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162445101135067L));
        }

        public static File getPythonCurrentSdkFile() {
            return new File(new File(ApplicationLoader.getFilesDirFixed(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162475165906139L)), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162513820611803L));
        }

        static File requestSdkFromApkFile() {
            return new File(new File(ApplicationLoader.getFilesDirFixed(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162561065252059L)), Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162599719957723L));
        }

        static void deleteSdkUpdateFile() {
            File pythonSdkUpdateFile = getPythonSdkUpdateFile();
            if (pythonSdkUpdateFile.exists()) {
                pythonSdkUpdateFile.delete();
                setStatus(0);
            }
        }

        public static void checkUpdates() {
            checkUpdates(false);
        }

        public static void checkUpdates(boolean z) {
            if ((status != 1 || Math.abs(System.currentTimeMillis() - lastCheckUpdateTime) >= TimeUnit.SECONDS.toMillis(6L)) && status <= 2) {
                if (ExteraConfig.pluginsPySdkAutoUpdate || z || Math.abs(System.currentTimeMillis() - ExteraConfig.sdkUpdateScheduleTimestamp) >= TimeUnit.HOURS.toMillis(1L)) {
                    setStatus(1);
                    lastCheckUpdateTime = System.currentTimeMillis();
                    RemoteUtils.searchMessages(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162651259565275L), new TLRPC.TL_inputMessagesFilterDocument(), new Utilities.Callback2() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$Updater$$ExternalSyntheticLambda0
                        @Override // org.telegram.messenger.Utilities.Callback2
                        public final void run(Object obj, Object obj2) {
                            PythonPluginsEngine.Updater.$r8$lambda$vmAdHIRud4DIzodi0eDlJGuUNAo((TLRPC.messages_Messages) obj, (TLRPC.TL_error) obj2);
                        }
                    }, 3000);
                }
            }
        }

        public static /* synthetic */ void $r8$lambda$vmAdHIRud4DIzodi0eDlJGuUNAo(TLRPC.messages_Messages messages_messages, TLRPC.TL_error tL_error) {
            final PythonSdkUpdateInfo pythonSdkUpdateResponse;
            if (tL_error != null) {
                FileLog.m1134e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986163647691977947L) + tL_error.text);
            } else if (messages_messages != null && (pythonSdkUpdateResponse = parsePythonSdkUpdateResponse(messages_messages)) != null) {
                if (!ExteraConfig.pluginsPySdkAutoUpdate && !pythonSdkUpdateResponse.can_not_skip) {
                    final BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                    if (safeLastFragment != null) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$Updater$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                BaseFragment baseFragment = safeLastFragment;
                                PythonPluginsEngine.Updater.PythonSdkUpdateInfo pythonSdkUpdateInfo = pythonSdkUpdateResponse;
                                baseFragment.showDialog(new PythonPluginsEngine.Updater.DialogC11601(baseFragment.getParentActivity(), pythonSdkUpdateInfo, baseFragment.getCurrentAccount(), pythonSdkUpdateInfo));
                            }
                        });
                        return;
                    }
                    return;
                }
                try {
                    savePythonSdkArchive(pythonSdkUpdateResponse.message, pythonSdkUpdateResponse.document);
                    return;
                } catch (IOException e) {
                    FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986163394288907483L) + pythonSdkUpdateResponse.channel + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986163570382566619L) + pythonSdkUpdateResponse.message.f1686id + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986163639102043355L), e);
                }
            }
            setStatus(2);
        }

        /* JADX INFO: renamed from: com.exteragram.messenger.plugins.PythonPluginsEngine$Updater$1 */
        /* JADX INFO: loaded from: classes4.dex */
        class DialogC11601 extends UpdateAppAlertDialog {
            private boolean enableAutoUpdate;
            final /* synthetic */ PythonSdkUpdateInfo val$update;

            @Override // org.telegram.p029ui.ActionBar.BottomSheet, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
            public /* bridge */ /* synthetic */ void setLastVisible(boolean z) {
                BaseFragment.AttachedSheet.CC.$default$setLastVisible(this, z);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            DialogC11601(Activity activity, TLRPC.TL_help_appUpdate tL_help_appUpdate, int i, PythonSdkUpdateInfo pythonSdkUpdateInfo) {
                super(activity, tL_help_appUpdate, i);
                this.val$update = pythonSdkUpdateInfo;
                this.enableAutoUpdate = false;
            }

            @Override // com.exteragram.messenger.updater.UpdateAppAlertDialog
            protected String getDoneButtonText() {
                return LocaleController.getString(C2888R.string.AppUpdateNow);
            }

            @Override // com.exteragram.messenger.updater.UpdateAppAlertDialog
            protected String getTitleText() {
                return super.getTitleText() + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986164446555895003L);
            }

            @Override // com.exteragram.messenger.updater.UpdateAppAlertDialog
            protected void addContentBeforeDoneButton(FrameLayout frameLayout) {
                final CheckBox2 checkBox2 = new CheckBox2(getContext(), 21, this.resourcesProvider);
                checkBox2.setColor(Theme.key_radioBackgroundChecked, Theme.key_checkboxDisabled, Theme.key_checkboxCheck);
                checkBox2.setDrawUnchecked(true);
                checkBox2.setChecked(false, false);
                checkBox2.setDrawBackgroundAsArc(10);
                TextView textView = new TextView(getContext());
                textView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
                textView.setTextSize(1, 14.0f);
                textView.setText(LocaleController.getString(C2888R.string.EnableAutoUpdate));
                FrameLayout frameLayout2 = new FrameLayout(getContext());
                frameLayout2.addView(checkBox2, LayoutHelper.createFrame(21, 21.0f, 17, 0.0f, 0.0f, 0.0f, 0.0f));
                LinearLayout linearLayout = new LinearLayout(AndroidUtilities.getActivity());
                linearLayout.setOrientation(0);
                linearLayout.setPadding(AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(6.0f));
                linearLayout.addView(frameLayout2, LayoutHelper.createLinear(24, 24, 16, 0, 0, 6, 0));
                linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 16));
                linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$Updater$1$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$addContentBeforeDoneButton$0(checkBox2, view);
                    }
                });
                ScaleStateListAnimator.apply(linearLayout, 0.05f, 1.2f);
                linearLayout.setBackground(Theme.createRadSelectorDrawable(getThemedColor(Theme.key_listSelector), 8, 8));
                this.linearLayout.addView(linearLayout, LayoutHelper.createLinear(-2, -2, 1, 0, 0, 0, 8));
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$addContentBeforeDoneButton$0(CheckBox2 checkBox2, View view) {
                checkBox2.setChecked(!checkBox2.isChecked(), true);
                this.enableAutoUpdate = checkBox2.isChecked();
            }

            @Override // com.exteragram.messenger.updater.UpdateAppAlertDialog
            protected void addContentAfterDoneButton(FrameLayout frameLayout) {
                addRemindLaterButton(frameLayout, new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$Updater$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$addContentAfterDoneButton$1();
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$addContentAfterDoneButton$1() {
                SharedPreferences.Editor editor = ExteraConfig.editor;
                String string = Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986164871757657307L);
                long jCurrentTimeMillis = System.currentTimeMillis();
                ExteraConfig.sdkUpdateScheduleTimestamp = jCurrentTimeMillis;
                editor.putLong(string, jCurrentTimeMillis).apply();
                lambda$new$0();
            }

            @Override // com.exteragram.messenger.updater.UpdateAppAlertDialog
            protected void onDone() {
                if (this.enableAutoUpdate) {
                    SharedPreferences.Editor editor = ExteraConfig.editor;
                    String string = Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986164519570339035L);
                    ExteraConfig.pluginsPySdkAutoUpdate = true;
                    editor.putBoolean(string, true).apply();
                    if (Updater.notifyWhenChangeStatus) {
                        Updater.notifyRunnable.run();
                    }
                }
                try {
                    PythonSdkUpdateInfo pythonSdkUpdateInfo = this.val$update;
                    Updater.savePythonSdkArchive(pythonSdkUpdateInfo.message, pythonSdkUpdateInfo.document, true);
                } catch (IOException e) {
                    FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986164618354586843L) + this.val$update.channel + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986164794448245979L) + this.val$update.message.f1686id + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986164863167722715L), e);
                }
                lambda$new$0();
            }
        }

        public static void restoreSdkFromApk() {
            AndroidUtilities.createEmptyFile(requestSdkFromApkFile());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void setStatus(int i) {
            status = i;
            if (notifyWhenChangeStatus) {
                Runnable runnable = notifyRunnable;
                AndroidUtilities.cancelRunOnUIThread(runnable);
                AndroidUtilities.runOnUIThread(runnable, i == 1 ? 0L : 600L);
            }
        }

        public static PythonSdkUpdateInfo parsePythonSdkUpdateResponse(TLRPC.messages_Messages messages_messages) {
            boolean z;
            PythonSdkUpdateInfo pythonSdkUpdateInfo = new PythonSdkUpdateInfo();
            ArrayList arrayList = messages_messages.messages;
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    z = false;
                    break;
                }
                Object obj = arrayList.get(i);
                i++;
                TLRPC.Message message = (TLRPC.Message) obj;
                if ((message instanceof TLRPC.TL_message) && !TextUtils.isEmpty(message.message) && (message.media instanceof TLRPC.TL_messageMediaDocument)) {
                    boolean zContains = message.message.contains(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162698504205531L));
                    boolean zContains2 = message.message.contains(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162775813616859L));
                    if (zContains || zContains2) {
                        if (!zContains2 || ExteraConfig.pluginsPySdkBetaVersions) {
                            StringBuilder sb = new StringBuilder();
                            boolean z2 = false;
                            for (String str : message.message.split(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162844533093595L))) {
                                String strTrim = str.trim();
                                if (!TextUtils.isEmpty(strTrim) || !z2) {
                                    if (strTrim.startsWith(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162853123028187L))) {
                                        pythonSdkUpdateInfo.channel = Deobfuscator$exteraGramDev$TMessagesProj.getString(zContains2 ? -5986162904662635739L : -5986162926137472219L);
                                        z2 = true;
                                    } else if (!z2) {
                                        sb.append(strTrim);
                                        sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162956202243291L));
                                    } else {
                                        Matcher matcher = PYTHON_SDK_APP_VERSION_PATTERN.matcher(strTrim);
                                        if (matcher.matches()) {
                                            pythonSdkUpdateInfo.appVersionOperator = matcher.group(1);
                                            pythonSdkUpdateInfo.appVersion = matcher.group(2).trim();
                                        } else {
                                            Matcher matcher2 = PYTHON_SDK_APP_VERSION_CODE_PATTERN.matcher(strTrim);
                                            if (matcher2.matches()) {
                                                pythonSdkUpdateInfo.appVersionCodeOperator = matcher2.group(1);
                                                pythonSdkUpdateInfo.appVersionCode = matcher2.group(2).trim();
                                            } else {
                                                String[] strArrSplit = strTrim.split(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162964792177883L), 2);
                                                if (strArrSplit.length == 2) {
                                                    String strTrim2 = strArrSplit[0].trim();
                                                    String strTrim3 = strArrSplit[1].trim();
                                                    int iHashCode = strTrim2.hashCode();
                                                    if (iHashCode != -1085916422) {
                                                        if (iHashCode == 351608024 && strTrim2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986163029216687323L))) {
                                                            pythonSdkUpdateInfo.version = strTrim3;
                                                        }
                                                    } else if (strTrim2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986162973382112475L))) {
                                                        pythonSdkUpdateInfo.can_not_skip = Boolean.parseBoolean(strTrim3);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            z = false;
                            pythonSdkUpdateInfo.document = message.media.getDocument();
                            if (!pythonSdkUpdateInfo.canInstall()) {
                                pythonSdkUpdateInfo.clear();
                            } else {
                                pythonSdkUpdateInfo.text = sb.toString();
                                ArrayList<TLRPC.MessageEntity> arrayList2 = new ArrayList<>();
                                ArrayList arrayList3 = message.entities;
                                int size2 = arrayList3.size();
                                int i2 = 0;
                                while (i2 < size2) {
                                    Object obj2 = arrayList3.get(i2);
                                    i2++;
                                    TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) obj2;
                                    if (!(messageEntity instanceof TLRPC.TL_messageEntityPre)) {
                                        arrayList2.add(messageEntity);
                                    }
                                }
                                pythonSdkUpdateInfo.entities = arrayList2;
                                pythonSdkUpdateInfo.message = message;
                            }
                        }
                    }
                }
            }
            if (pythonSdkUpdateInfo.message == null) {
                return null;
            }
            pythonSdkUpdateInfo.available = (pythonSdkUpdateInfo.document == null || TextUtils.isEmpty(pythonSdkUpdateInfo.version)) ? z : true;
            return pythonSdkUpdateInfo;
        }

        public static boolean isSdkVersionNewer(String str, boolean z) {
            return (ExteraConfig.pluginsPySdkBetaVersions || !PythonPluginsEngine.SDK_BETA) ? AppUtils.compareVersions(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986163063576425691L), str, PythonPluginsEngine.SDK_VERSION) : !z;
        }

        public static boolean isAppVersionCompatible(String str, String str2) {
            return AppUtils.compareVersions(str, BuildVars.BUILD_VERSION_STRING, str2);
        }

        public static boolean isAppVersionCodeCompatible(String str, String str2) {
            return AppUtils.compareVersions(str, BuildVars.BUILD_VERSION, Integer.parseInt(str2));
        }

        public static void zipFolder(File file, File file2) throws IOException {
            if (file2.exists()) {
                file2.delete();
            }
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file2)));
            try {
                zipRecursive(file, file, zipOutputStream);
                zipOutputStream.close();
            } catch (Throwable th) {
                try {
                    zipOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        private static void zipRecursive(File file, File file2, ZipOutputStream zipOutputStream) throws IOException {
            File[] fileArrListFiles = file2.listFiles();
            if (fileArrListFiles == null) {
                return;
            }
            for (File file3 : fileArrListFiles) {
                String path = file.toURI().relativize(file3.toURI()).getPath();
                if (file3.isDirectory()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(path);
                    sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(path.endsWith(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986163072166360283L)) ? -5986163080756294875L : -5986163085051262171L));
                    zipOutputStream.putNextEntry(new ZipEntry(sb.toString()));
                    zipOutputStream.closeEntry();
                    zipRecursive(file, file3, zipOutputStream);
                } else {
                    zipOutputStream.putNextEntry(new ZipEntry(path));
                    FileInputStream fileInputStream = new FileInputStream(file3);
                    try {
                        byte[] bArr = new byte[8192];
                        while (true) {
                            int i = fileInputStream.read(bArr);
                            if (i <= 0) {
                                break;
                            } else {
                                zipOutputStream.write(bArr, 0, i);
                            }
                        }
                        fileInputStream.close();
                        zipOutputStream.closeEntry();
                    } catch (Throwable th) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void copyArchiveToPluginsDirectory(TLRPC.Document document, boolean z) {
            File pythonSdkUpdateFile = getPythonSdkUpdateFile();
            try {
                if (!AndroidUtilities.copyFile(FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(document), pythonSdkUpdateFile)) {
                    FileLog.m1134e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986163093641196763L) + pythonSdkUpdateFile.getAbsolutePath());
                    setStatus(2);
                } else if (z) {
                    PluginsController.getInstance().restart();
                } else {
                    setStatus(4);
                }
            } catch (IOException e) {
                FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986163256849954011L), e);
                setStatus(2);
            }
            isLoading = false;
        }

        public static void savePythonSdkArchive(TLRPC.Message message, TLRPC.Document document) {
            savePythonSdkArchive(message, document, false);
        }

        public static void savePythonSdkArchive(TLRPC.Message message, final TLRPC.Document document, final boolean z) {
            if (isLoading || message == null || document == null) {
                return;
            }
            MessageObject messageObject = new MessageObject(UserConfig.selectedAccount, message, false, true);
            isLoading = true;
            setStatus(3);
            if (messageObject.mediaExists) {
                copyArchiveToPluginsDirectory(document, z);
                return;
            }
            TAG = DownloadController.getInstance(UserConfig.selectedAccount).generateObserverTag();
            FileLoader.getInstance(UserConfig.selectedAccount).loadFile(document, messageObject, 1, 0);
            DownloadController.getInstance(UserConfig.selectedAccount).addLoadingFileObserver(FileLoader.getAttachFileName(document), messageObject, new DownloadController.FileDownloadProgressListener() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine.Updater.2
                @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
                public void onProgressDownload(String str, long j, long j2) {
                }

                @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
                public void onProgressUpload(String str, long j, long j2, boolean z2) {
                }

                @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
                public void onFailedDownload(String str, boolean z2) {
                    FileLog.m1134e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986161272575063259L));
                    Updater.isLoading = false;
                    Updater.setStatus(2);
                }

                @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
                public void onSuccessDownload(String str) {
                    Updater.copyArchiveToPluginsDirectory(document, z);
                }

                @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
                public int getObserverTag() {
                    return Updater.TAG;
                }
            });
        }
    }
}

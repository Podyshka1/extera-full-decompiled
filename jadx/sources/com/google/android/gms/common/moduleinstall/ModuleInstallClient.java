package com.google.android.gms.common.moduleinstall;

import com.google.android.gms.common.api.OptionalModuleApi;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes4.dex */
public interface ModuleInstallClient {
    Task areModulesAvailable(OptionalModuleApi... optionalModuleApiArr);

    Task installModules(ModuleInstallRequest moduleInstallRequest);
}

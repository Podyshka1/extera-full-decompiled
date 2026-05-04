.class public abstract Landroidx/mediarouter/app/SystemOutputSwitcherDialogController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/app/SystemOutputSwitcherDialogController$Api30Impl;,
        Landroidx/mediarouter/app/SystemOutputSwitcherDialogController$Api34Impl;
    }
.end annotation


# direct methods
.method private static isRunningOnWear(Landroid/content/Context;)Z
    .locals 1

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 200
    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static showBluetoothSettingsFragment(Landroid/content/Context;)Z
    .locals 5

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 177
    const-string v1, "EXTRA_CONNECTION_ONLY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    .line 181
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 183
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 184
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    .line 185
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x81

    if-eqz v4, :cond_0

    .line 191
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_2
    return v3
.end method

.method public static showDialog(Landroid/content/Context;)Z
    .locals 4

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    .line 85
    invoke-static {p0}, Landroidx/mediarouter/app/SystemOutputSwitcherDialogController;->showDialogForAndroidUAndAbove(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    .line 87
    invoke-static {p0}, Landroidx/mediarouter/app/SystemOutputSwitcherDialogController;->showDialogForAndroidSAndT(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-static {p0}, Landroidx/mediarouter/app/SystemOutputSwitcherDialogController;->showDialogForAndroidR(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_3

    .line 93
    invoke-static {p0}, Landroidx/mediarouter/app/SystemOutputSwitcherDialogController;->showDialogForAndroidR(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    if-eqz v0, :cond_4

    return v2

    .line 100
    :cond_4
    invoke-static {p0}, Landroidx/mediarouter/app/SystemOutputSwitcherDialogController;->isRunningOnWear(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Landroidx/mediarouter/app/SystemOutputSwitcherDialogController;->showBluetoothSettingsFragment(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v3
.end method

.method private static showDialogForAndroidR(Landroid/content/Context;)Z
    .locals 4

    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.panel.action.MEDIA_OUTPUT"

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.panel.extra.PACKAGE_NAME"

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 154
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 156
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 157
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    .line 158
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_0

    .line 164
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method private static showDialogForAndroidSAndT(Landroid/content/Context;)Z
    .locals 4

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_DIALOG"

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.systemui"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package_name"

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 126
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 129
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_0

    .line 136
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method private static showDialogForAndroidUAndAbove(Landroid/content/Context;)Z
    .locals 2

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 109
    invoke-static {p0}, Landroidx/mediarouter/app/SystemOutputSwitcherDialogController$Api30Impl;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2;

    move-result-object p0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 111
    invoke-static {p0}, Landroidx/mediarouter/app/SystemOutputSwitcherDialogController$Api34Impl;->showSystemOutputSwitcher(Landroid/media/MediaRouter2;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

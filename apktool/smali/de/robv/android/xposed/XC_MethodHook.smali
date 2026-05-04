.class public abstract Lde/robv/android/xposed/XC_MethodHook;
.super Lde/robv/android/xposed/callbacks/XCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/XC_MethodHook$Unhook;,
        Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lde/robv/android/xposed/callbacks/XCallback;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lde/robv/android/xposed/callbacks/XCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    return-void
.end method

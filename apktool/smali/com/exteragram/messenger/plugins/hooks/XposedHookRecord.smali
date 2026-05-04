.class public Lcom/exteragram/messenger/plugins/hooks/XposedHookRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/plugins/hooks/HookRecord;


# instance fields
.field final unhookObject:Lde/robv/android/xposed/XC_MethodHook$Unhook;


# direct methods
.method public constructor <init>(Lde/robv/android/xposed/XC_MethodHook$Unhook;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/hooks/XposedHookRecord;->unhookObject:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/hooks/XposedHookRecord;->unhookObject:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-eqz v0, :cond_0

    .line 31
    :try_start_0
    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-wide v1, -0x53132f8d1c0974dbL    # -2.7627316708914285E-92

    .line 33
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    check-cast p1, Lcom/exteragram/messenger/plugins/hooks/XposedHookRecord;

    .line 48
    iget-object v2, p0, Lcom/exteragram/messenger/plugins/hooks/XposedHookRecord;->unhookObject:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    iget-object p1, p1, Lcom/exteragram/messenger/plugins/hooks/XposedHookRecord;->unhookObject:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/hooks/XposedHookRecord;->unhookObject:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1

    .line 40
    instance-of v0, p1, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/hooks/XposedHookRecord;->unhookObject:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

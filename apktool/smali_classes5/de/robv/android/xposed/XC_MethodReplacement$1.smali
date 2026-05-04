.class Lde/robv/android/xposed/XC_MethodReplacement$1;
.super Lde/robv/android/xposed/XC_MethodReplacement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/XC_MethodReplacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lde/robv/android/xposed/XC_MethodReplacement;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected replaceHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

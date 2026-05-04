.class Lde/robv/android/xposed/XC_MethodReplacement$2;
.super Lde/robv/android/xposed/XC_MethodReplacement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/XC_MethodReplacement;->returnConstant(ILjava/lang/Object;)Lde/robv/android/xposed/XC_MethodReplacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 95
    iput-object p2, p0, Lde/robv/android/xposed/XC_MethodReplacement$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lde/robv/android/xposed/XC_MethodReplacement;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected replaceHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .locals 0

    .line 98
    iget-object p1, p0, Lde/robv/android/xposed/XC_MethodReplacement$2;->val$result:Ljava/lang/Object;

    return-object p1
.end method

.class public final synthetic Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda28;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda28;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda28;->f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p4, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda28;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda28;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda28;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda28;->f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v3, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda28;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ReportBottomSheet;->$r8$lambda$tSiSeU2ldF9U7FjyHNznWxZullw(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    return-void
.end method

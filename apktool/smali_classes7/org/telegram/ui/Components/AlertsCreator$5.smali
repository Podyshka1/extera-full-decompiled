.class Lorg/telegram/ui/Components/AlertsCreator$5;
.super Landroid/text/style/URLSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->showOpenUrlAlert(Landroid/content/Context;Ljava/lang/String;ZZZZJLorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$open:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;[Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 1533
    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$5;->val$open:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$5;->val$dialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1536
    iget-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$5;->val$open:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1537
    iget-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$5;->val$dialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    .line 1538
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

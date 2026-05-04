.class Lorg/telegram/ui/web/WebBrowserSettings$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/WebBrowserSettings;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/web/WebBrowserSettings;

.field final synthetic val$done:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/web/WebBrowserSettings;Ljava/lang/Runnable;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lorg/telegram/ui/web/WebBrowserSettings$3;->this$0:Lorg/telegram/ui/web/WebBrowserSettings;

    iput-object p2, p0, Lorg/telegram/ui/web/WebBrowserSettings$3;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 499
    iget-object p1, p0, Lorg/telegram/ui/web/WebBrowserSettings$3;->val$done:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

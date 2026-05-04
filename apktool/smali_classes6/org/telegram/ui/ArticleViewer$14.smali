.class Lorg/telegram/ui/ArticleViewer$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 4014
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$14;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 4021
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$14;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/web/WebActionBar;->isAddressing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4022
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$14;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetaddressBarList(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/AddressBarList;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 4023
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$14;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetaddressBarList(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/AddressBarList;

    move-result-object v0

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Lorg/telegram/ui/web/AddressBarList;->setInput(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.class Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/ai/network/GenerationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/ai/ui/ResponseAlert;->generate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChunk(Ljava/lang/String;)V
    .locals 2

    .line 326
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fputcurrentResponse(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgettextView(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v1, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$mformatResponse(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetadapter(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgettextViewContainer(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;->updateMainView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 335
    iget-object p2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p2}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$300(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Landroid/view/ViewGroup;

    move-result-object p2

    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$400(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/exteragram/messenger/ai/AiController;->showErrorBulletin(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 336
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetadapter(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p2}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgettextViewContainer(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;->updateMainView(Landroid/view/View;)V

    .line 337
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$mupdateMainButton(Lcom/exteragram/messenger/ai/ui/ResponseAlert;ZZ)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2

    .line 316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fputcurrentResponse(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgettextView(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v1, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$mformatResponse(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetadapter(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgettextViewContainer(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$PaddedAdapter;->updateMainView(Landroid/view/View;)V

    .line 320
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$6;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$mupdateMainButton(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Z)V

    :cond_0
    return-void
.end method

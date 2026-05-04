.class Lorg/telegram/ui/DialogsActivity$41$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$41;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$41;

.field final synthetic val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$41;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 11729
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$41$1;->this$1:Lorg/telegram/ui/DialogsActivity$41;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$41$1;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .line 11747
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$41$1;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11749
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$41$1;->this$1:Lorg/telegram/ui/DialogsActivity$41;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->TranslationFailedAlert2:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public synthetic onReqId(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback$-CC;->$default$onReqId(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;I)V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback$-CC;->$default$onSuccess(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onSuccess(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback$-CC;->$default$onSuccess(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public onSuccess(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 7

    .line 11733
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$41$1;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11735
    :catch_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 11736
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    .line 11737
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$41$1;->this$1:Lorg/telegram/ui/DialogsActivity$41;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetcommentView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 11738
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$41$1;->this$1:Lorg/telegram/ui/DialogsActivity$41;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetcommentView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setSelection(I)V

    .line 11739
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$41$1;->this$1:Lorg/telegram/ui/DialogsActivity$41;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsendPopupWindow(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$41$1;->this$1:Lorg/telegram/ui/DialogsActivity$41;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsendPopupWindow(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11740
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$41$1;->this$1:Lorg/telegram/ui/DialogsActivity$41;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsendPopupWindow(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

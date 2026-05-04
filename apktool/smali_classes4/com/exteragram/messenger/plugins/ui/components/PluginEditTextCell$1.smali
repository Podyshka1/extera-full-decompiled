.class Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$1;->this$0:Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 69
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$1;->this$0:Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->-$$Nest$fputvalueToSave(Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$1;->this$0:Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;

    invoke-static {p1}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->-$$Nest$mscheduleSave(Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;)V

    return-void
.end method

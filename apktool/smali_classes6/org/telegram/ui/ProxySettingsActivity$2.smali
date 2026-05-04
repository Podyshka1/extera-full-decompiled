.class Lorg/telegram/ui/ProxySettingsActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProxySettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProxySettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProxySettingsActivity;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$2;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 334
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$2;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$mcheckShareDone(Lorg/telegram/ui/ProxySettingsActivity;Z)V

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

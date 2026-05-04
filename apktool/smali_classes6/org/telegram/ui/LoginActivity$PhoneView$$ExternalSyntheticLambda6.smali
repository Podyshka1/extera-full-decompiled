.class public final synthetic Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda6;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final makeView()Landroid/view/View;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$$ExternalSyntheticLambda6;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->$r8$lambda$H3QknSvHpPSXjvO9NWPeRB8o_IM(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

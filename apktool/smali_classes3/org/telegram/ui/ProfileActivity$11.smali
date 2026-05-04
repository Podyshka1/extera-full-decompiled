.class Lorg/telegram/ui/ProfileActivity$11;
.super Lorg/telegram/ui/Components/ProfileActionsView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;I)V
    .locals 0

    .line 4022
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$11;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/ProfileActionsView;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public setTranslationY(F)V
    .locals 0

    .line 4025
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

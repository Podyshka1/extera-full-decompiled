.class Lorg/telegram/ui/ExternalActionActivity$1;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ExternalActionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ExternalActionActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ExternalActionActivity;Landroid/content/Context;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lorg/telegram/ui/ExternalActionActivity$1;->this$0:Lorg/telegram/ui/ExternalActionActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected isActionBarVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

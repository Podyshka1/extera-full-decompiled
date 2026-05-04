.class Lorg/telegram/ui/ChangeNameActivity$2;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeNameActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeNameActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeNameActivity;Landroid/content/Context;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/telegram/ui/ChangeNameActivity$2;->this$0:Lorg/telegram/ui/ChangeNameActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/ChangeNameActivity$2;->this$0:Lorg/telegram/ui/ChangeNameActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeNameActivity;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ChangeNameActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    return-object v0
.end method

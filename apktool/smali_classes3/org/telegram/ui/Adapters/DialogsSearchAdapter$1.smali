.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;
.super Lorg/telegram/ui/Adapters/SearchAdapterHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;-><init>(Landroid/content/Context;Lorg/telegram/ui/DialogsActivity;IILandroidx/recyclerview/widget/DefaultItemAnimator;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Z)V
    .locals 0

    .line 314
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected filter(Lorg/telegram/tgnet/TLObject;)Z
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-static {v0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->-$$Nest$mfilter(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

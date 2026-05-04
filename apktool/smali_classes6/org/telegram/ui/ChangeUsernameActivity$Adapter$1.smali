.class Lorg/telegram/ui/ChangeUsernameActivity$Adapter$1;
.super Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUsernameActivity$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChangeUsernameActivity$Adapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity$Adapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$Adapter$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$Adapter;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x1

    .line 481
    iput-boolean p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->isProfile:Z

    return-void
.end method


# virtual methods
.method protected getUsernameEditable()Ljava/lang/String;
    .locals 1

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$Adapter$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$Adapter;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->-$$Nest$fgetusername(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

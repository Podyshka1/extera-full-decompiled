.class Lorg/telegram/ui/ContactsActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 1415
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity$9;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1418
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$9;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetlistViewAdapter(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortOnlineContacts()V

    .line 1419
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$9;->this$0:Lorg/telegram/ui/ContactsActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/ContactsActivity;->scheduled:Z

    return-void
.end method

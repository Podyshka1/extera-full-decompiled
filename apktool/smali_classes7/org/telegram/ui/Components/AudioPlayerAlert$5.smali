.class Lorg/telegram/ui/Components/AudioPlayerAlert$5;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 533
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$5;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$monSubItemClick(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V

    return-void
.end method

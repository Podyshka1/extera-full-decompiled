.class Lorg/telegram/ui/ActionBar/ActionBarMenuItem$13;
.super Lorg/telegram/ui/Components/CloseProgressDrawable2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->checkCreateSearchField()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 0

    .line 1693
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$13;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentColor()I
    .locals 1

    .line 1696
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$13;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetparentMenu(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    return v0
.end method

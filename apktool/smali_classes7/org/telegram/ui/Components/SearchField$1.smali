.class Lorg/telegram/ui/Components/SearchField$1;
.super Lorg/telegram/ui/Components/CloseProgressDrawable2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SearchField;-><init>(Landroid/content/Context;ZFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SearchField;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SearchField;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchField$1;->this$0:Lorg/telegram/ui/Components/SearchField;

    invoke-direct {p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCurrentColor()I
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchField$1;->this$0:Lorg/telegram/ui/Components/SearchField;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchIcon:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SearchField;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/SearchField;I)I

    move-result v0

    return v0
.end method

.class Lorg/telegram/ui/Stories/LiveCommentsView$8;
.super Lorg/telegram/ui/Stories/DarkThemeResourceProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/LiveCommentsView;->openDeleteMessage(Landroid/content/Context;JLorg/telegram/messenger/Utilities$Callback3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2089
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public appendColors()V
    .locals 3

    .line 2092
    iget-object v0, p0, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;->sparseIntArray:Landroid/util/SparseIntArray;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    const v2, -0xdfdfe0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

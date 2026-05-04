.class Lorg/telegram/ui/Stories/recorder/CropInlineEditor$1;
.super Lorg/telegram/ui/Components/Crop/CropView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/CropInlineEditor;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;Landroid/content/Context;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$1;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Crop/CropView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getCurrentHeight()I
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$1;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->-$$Nest$mgetCurrentHeight(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)I

    move-result v0

    return v0
.end method

.method public getCurrentWidth()I
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor$1;->this$0:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->-$$Nest$mgetCurrentWidth(Lorg/telegram/ui/Stories/recorder/CropInlineEditor;)I

    move-result v0

    return v0
.end method

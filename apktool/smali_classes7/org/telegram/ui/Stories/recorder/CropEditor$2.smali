.class Lorg/telegram/ui/Stories/recorder/CropEditor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/CropEditor;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/CropEditor;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$2;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAspectLock(Z)V
    .locals 0

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    return-void
.end method

.method public onTapUp()V
    .locals 0

    return-void
.end method

.method public onUpdate()V
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CropEditor$2;->this$0:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CropEditor;->contentView:Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

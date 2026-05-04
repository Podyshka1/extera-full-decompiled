.class Lorg/telegram/ui/CalendarActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CalendarActivity;->getThemeDescriptions()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CalendarActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CalendarActivity;)V
    .locals 0

    .line 1486
    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity$9;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetColor()V
    .locals 1

    .line 1489
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$9;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->-$$Nest$mupdateColors(Lorg/telegram/ui/CalendarActivity;)V

    return-void
.end method

.method public synthetic onAnimationProgress(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate$-CC;->$default$onAnimationProgress(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;F)V

    return-void
.end method

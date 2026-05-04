.class Lorg/telegram/messenger/time/FastDateParser$1;
.super Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 736
    invoke-direct {p0, p1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method setCalendar(Lorg/telegram/messenger/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 1

    .line 742
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/16 v0, 0x64

    if-ge p3, v0, :cond_0

    .line 744
    invoke-static {p1, p3}, Lorg/telegram/messenger/time/FastDateParser;->-$$Nest$madjustYear(Lorg/telegram/messenger/time/FastDateParser;I)I

    move-result p3

    :cond_0
    const/4 p1, 0x1

    .line 746
    invoke-virtual {p2, p1, p3}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

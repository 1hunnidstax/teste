.class public final Lcom/inmobi/commons/core/utilities/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;
    }
.end annotation


# static fields
.field private static a:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "production"

    const-string v1, "staging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    :goto_0
    sput-object v0, Lcom/inmobi/commons/core/utilities/Logger;->a:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    return-void

    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->NONE:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    goto :goto_0
.end method

.method public static a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;)V
    .locals 0

    .prologue
    .line 83
    sput-object p0, Lcom/inmobi/commons/core/utilities/Logger;->a:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    .line 84
    return-void
.end method

.method public static a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger;->a:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 29
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$1;->a:[I

    invoke-virtual {p0}, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 31
    :pswitch_0
    const-string v0, "[InMobi]"

    .line 32
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 35
    :pswitch_1
    const-string v0, "[InMobi]"

    .line 36
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_1

    .line 40
    invoke-static {p1, p2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger;->a:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 57
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$1;->a:[I

    invoke-virtual {p0}, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 59
    :pswitch_0
    const-string v0, "[InMobi]"

    .line 60
    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 63
    :pswitch_1
    const-string v0, "[InMobi]"

    .line 64
    invoke-static {v0, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 67
    :pswitch_2
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0xfa0

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

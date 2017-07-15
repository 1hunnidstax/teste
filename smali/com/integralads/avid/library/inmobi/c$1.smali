.class final Lcom/integralads/avid/library/inmobi/c$1;
.super Ljava/lang/Object;
.source "AvidLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integralads/avid/library/inmobi/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lcom/integralads/avid/library/inmobi/c;->b()Lcom/integralads/avid/library/inmobi/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lcom/integralads/avid/library/inmobi/c;->b()Lcom/integralads/avid/library/inmobi/c$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/c$a;->sendEmptyMessage(I)Z

    .line 91
    :cond_0
    return-void
.end method

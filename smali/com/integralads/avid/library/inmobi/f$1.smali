.class final Lcom/integralads/avid/library/inmobi/f$1;
.super Ljava/lang/Object;
.source "AvidTreeWalker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integralads/avid/library/inmobi/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 93
    invoke-static {}, Lcom/integralads/avid/library/inmobi/f;->e()Lcom/integralads/avid/library/inmobi/f$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/integralads/avid/library/inmobi/f;->e()Lcom/integralads/avid/library/inmobi/f$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/f$b;->sendEmptyMessage(I)Z

    .line 95
    invoke-static {}, Lcom/integralads/avid/library/inmobi/f;->e()Lcom/integralads/avid/library/inmobi/f$b;

    move-result-object v0

    invoke-static {}, Lcom/integralads/avid/library/inmobi/f;->f()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/integralads/avid/library/inmobi/f$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    :cond_0
    return-void
.end method

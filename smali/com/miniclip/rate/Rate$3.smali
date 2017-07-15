.class final Lcom/miniclip/rate/Rate$3;
.super Lcom/miniclip/framework/AbstractActivityListener;
.source "Rate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/rate/Rate;->registerSessionStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/miniclip/framework/AbstractActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->Main:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/rate/Rate$3$1;

    invoke-direct {v1, p0}, Lcom/miniclip/rate/Rate$3$1;-><init>(Lcom/miniclip/rate/Rate$3;)V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

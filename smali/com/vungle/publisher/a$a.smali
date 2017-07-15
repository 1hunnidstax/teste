.class public final Lcom/vungle/publisher/a$a;
.super Lcom/vungle/publisher/qe;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/vungle/publisher/qe;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/vungle/publisher/v;)V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/vungle/publisher/a$a;->a:Lcom/vungle/publisher/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/a;->b(Z)V

    .line 381
    return-void
.end method

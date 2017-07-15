.class public final Lcom/vungle/publisher/alm$1;
.super Lcom/vungle/publisher/ahu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/alm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ahu",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/publisher/ahq;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ahq;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vungle/publisher/alm$1;->b:Lcom/vungle/publisher/ahq;

    invoke-direct {p0}, Lcom/vungle/publisher/ahu;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vungle/publisher/alm$1;->b:Lcom/vungle/publisher/ahq;

    invoke-interface {v0}, Lcom/vungle/publisher/ahq;->a()V

    .line 56
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vungle/publisher/alm$1;->b:Lcom/vungle/publisher/ahq;

    invoke-interface {v0, p1}, Lcom/vungle/publisher/ahq;->a(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vungle/publisher/alm$1;->b:Lcom/vungle/publisher/ahq;

    invoke-interface {v0, p1}, Lcom/vungle/publisher/ahq;->a(Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

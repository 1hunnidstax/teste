.class final Lcom/tapjoy/internal/ev$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ev;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ev;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/tapjoy/internal/ev$2;->a:Lcom/tapjoy/internal/ev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectFailure()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/tapjoy/internal/ev$2;->a:Lcom/tapjoy/internal/ev;

    .line 3032
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ev;->a(Z)V

    .line 166
    return-void
.end method

.method public final onConnectSuccess()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/tapjoy/internal/ev$2;->a:Lcom/tapjoy/internal/ev;

    sget v1, Lcom/tapjoy/internal/ev$c;->e:I

    sget v2, Lcom/tapjoy/internal/ev$c;->b:I

    .line 1032
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ev;->a(I)V

    .line 160
    iget-object v0, p0, Lcom/tapjoy/internal/ev$2;->a:Lcom/tapjoy/internal/ev;

    .line 2032
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ev;->a(Z)V

    .line 161
    return-void
.end method

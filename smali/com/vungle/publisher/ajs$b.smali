.class final Lcom/vungle/publisher/ajs$b;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ajs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/vungle/publisher/ajs$b;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/vungle/publisher/aie;

.field final b:Ljava/lang/Long;

.field final c:I


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aie;Ljava/lang/Long;I)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/vungle/publisher/ajs$b;->a:Lcom/vungle/publisher/aie;

    .line 109
    iput-object p2, p0, Lcom/vungle/publisher/ajs$b;->b:Ljava/lang/Long;

    .line 110
    iput p3, p0, Lcom/vungle/publisher/ajs$b;->c:I

    .line 111
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p1, Lcom/vungle/publisher/ajs$b;

    .end local p1    # "x0":Ljava/lang/Object;
    iget-object v0, p0, Lcom/vungle/publisher/ajs$b;->b:Ljava/lang/Long;

    iget-object v1, p1, Lcom/vungle/publisher/ajs$b;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vungle/publisher/ajs$b;->c:I

    iget v1, p1, Lcom/vungle/publisher/ajs$b;->c:I

    invoke-static {v0, v1}, Lcom/vungle/publisher/ajs;->a(II)I

    move-result v0

    :cond_0
    return v0
.end method

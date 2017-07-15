.class public final Lcom/vungle/publisher/aiv;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/aiv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahp$a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/vungle/publisher/aiv;->a:I

    .line 33
    iput p1, p0, Lcom/vungle/publisher/aiv;->b:I

    .line 34
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 26
    check-cast p1, Lcom/vungle/publisher/ahu;

    new-instance v0, Lcom/vungle/publisher/aiv$a;

    iget v1, p0, Lcom/vungle/publisher/aiv;->a:I

    iget v2, p0, Lcom/vungle/publisher/aiv;->b:I

    invoke-direct {v0, p1, v1, v2}, Lcom/vungle/publisher/aiv$a;-><init>(Lcom/vungle/publisher/ahu;II)V

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahr;)V

    return-void
.end method

.class public Lcom/integralads/avid/library/inmobi/d/a;
.super Ljava/lang/Object;
.source "AvidEmptyProcessor.java"

# interfaces
.implements Lcom/integralads/avid/library/inmobi/d/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-static {v0, v0, v0, v0}, Lcom/integralads/avid/library/inmobi/f/d;->a(IIII)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public b(Landroid/view/View;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public c(Landroid/view/View;)Lcom/integralads/avid/library/inmobi/d/e;
    .locals 0

    .prologue
    .line 25
    return-object p0
.end method

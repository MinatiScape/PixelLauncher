.class public final synthetic LA1/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LA1/Y;->b:I

    iput p2, p0, LA1/Y;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, LA1/Y;->b:I

    iget p0, p0, LA1/Y;->c:I

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView;->v(II)V

    return-void
.end method

.class public final synthetic LA1/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/quickstep/views/RecentsView$16;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView$16;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA1/h0;->b:Lcom/android/quickstep/views/RecentsView$16;

    iput p2, p0, LA1/h0;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LA1/h0;->b:Lcom/android/quickstep/views/RecentsView$16;

    iget p0, p0, LA1/h0;->c:I

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView$16;->a(Lcom/android/quickstep/views/RecentsView$16;I)V

    return-void
.end method

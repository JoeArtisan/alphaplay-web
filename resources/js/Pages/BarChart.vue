<template>
    <div class="card">
        <div class="card-header border-0">
            <div class="d-flex justify-content-between">
              <h3 class="card-title">{{title}}</h3>
            </div>
        </div>
        <div class="card-body">
            <div class="position-relative mb-4">
                <canvas ref="chart" class="small"></canvas>
            </div>
        </div>
    </div><!-- /.card -->
</template>

<script>
import { defineComponent } from 'vue'
    import AppLayout from '@/Layouts/AppLayout.vue'
    import Chart from 'chart.js/auto'

    export default defineComponent({
      props: ['title','data','labels'],
      components: {
          AppLayout,
          Chart
      },
      data () {
        return {
          chartData: {
            type: "bar",
            data: {
              labels: this.labels,
              datasets: [
                {
                  label: "1er Premio",
                  type: "line",
                  data: this.data,
                  backgroundColor: "#0b7585",
                  borderColor: "#0d8b9e",
                  borderWidth: 3
                },
              ]
            },
            options: {
              responsive: true,
              lineTension: 1,
              scales: {
                yAxes: [
                  {
                    ticks: {
                      beginAtZero: true,
                      padding: 25
                    }
                  }
                ]
              }
            }
          }, 
        }
      },
      mounted () {
        const context = this.$refs.chart
        new Chart(context, this.chartData); 
      },
    
    })
</script>
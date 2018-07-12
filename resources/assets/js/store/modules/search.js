export default {
    state    : {
        data: []
    },
    mutations: {
        SEARCH(state, response) {
            state.data = response;
        },
    },
    actions  : {
        addChannel(context, params) {
            params.action = 'search';
            return axios.post('/production/ajax/', params).then((response) => {
                console.log(response.data);
                //context.commit('SEARCH', response.data)
            });
        },
    }
}